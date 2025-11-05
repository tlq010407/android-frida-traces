package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMultivariantPlaylist;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.Iterables;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class HlsPlaylistParser implements ParsingLoadable.Parser {
    private final HlsMultivariantPlaylist multivariantPlaylist;
    private final HlsMediaPlaylist previousMediaPlaylist;
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"(.+?)\"");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"(.+?)\"");
    private static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_MIME = Pattern.compile("MIME=\"(.+?)\"");
    private static final Pattern REGEX_CACHED = Pattern.compile("CACHED=\"(.+?)\"");
    private static final Pattern REGEX_DOC_ID = Pattern.compile("DOCID=\"(.+?)\"");
    private static final Pattern REGEX_DOC_FILENAME = Pattern.compile("DOCFILENAME=\"(.+?)\"");
    private static final Pattern REGEX_ACCOUNT = Pattern.compile("ACCOUNT=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_ATTR_DURATION = Pattern.compile("DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_TARGET_DURATION = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_CAN_SKIP_UNTIL = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_SKIP_DATE_RANGES = compileBooleanAttrPattern("CAN-SKIP-DATERANGES");
    private static final Pattern REGEX_SKIPPED_SEGMENTS = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");
    private static final Pattern REGEX_HOLD_BACK = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_HOLD_BACK = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_BLOCK_RELOAD = compileBooleanAttrPattern("CAN-BLOCK-RELOAD");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern REGEX_LAST_MSN = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern REGEX_LAST_PART = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_BYTERANGE_START = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern REGEX_BYTERANGE_LENGTH = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_PRELOAD_HINT_TYPE = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_INDEPENDENT = compileBooleanAttrPattern("INDEPENDENT");
    private static final Pattern REGEX_GAP = compileBooleanAttrPattern("GAP");
    private static final Pattern REGEX_PRECISE = compileBooleanAttrPattern("PRECISE");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    public static final class DeltaUpdateException extends IOException {
    }

    private static class LineIterator {
        private final Queue extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public boolean hasNext() throws IOException {
            String strTrim;
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = (String) Assertions.checkNotNull((String) this.extraLines.poll());
                return true;
            }
            do {
                String line = this.reader.readLine();
                this.next = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.next = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.next;
            this.next = null;
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(HlsMultivariantPlaylist.EMPTY, null);
    }

    public HlsPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
        this.multivariantPlaylist = hlsMultivariantPlaylist;
        this.previousMediaPlaylist = hlsMediaPlaylist;
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int i = bufferedReader.read();
        if (i == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i = bufferedReader.read();
        }
        int iSkipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (iSkipIgnorableWhitespace != "#EXTM3U".charAt(i2)) {
                return false;
            }
            iSkipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, iSkipIgnorableWhitespace));
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    private static DrmInitData getPlaylistProtectionSchemes(String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i = 0; i < schemeDataArr.length; i++) {
            schemeDataArr2[i] = schemeDataArr[i].copyWithData(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    private static String getSegmentEncryptionIV(long j, String str, String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j);
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithAudioGroup(ArrayList arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithSubtitleGroup(ArrayList arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) arrayList.get(i);
            if (str.equals(variant.subtitleGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithVideoGroup(ArrayList arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static double parseDoubleAttr(String str, Pattern pattern) {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static DrmInitData.SchemeData parseDrmSchemeData(String str, String str2, Map map) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String stringAttr = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "video/mp4", Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(optionalStringAttr)) {
            return null;
        }
        String stringAttr2 = parseStringAttr(str, REGEX_URI, map);
        byte[] bArrDecode = Base64.decode(stringAttr2.substring(stringAttr2.indexOf(44)), 0);
        UUID uuid = C.PLAYREADY_UUID;
        return new DrmInitData.SchemeData(uuid, "video/mp4", PsshAtomUtil.buildPsshAtom(uuid, bArrDecode));
    }

    private static String parseEncryptionScheme(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    private static int parseIntAttr(String str, Pattern pattern) {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static long parseLongAttr(String str, Pattern pattern) {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static HlsMediaPlaylist parseMediaPlaylist(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, String str) throws DeltaUpdateException, ParserException, NumberFormatException {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        String str3;
        long j;
        int i;
        HlsMediaPlaylist.Part part;
        String stringAttr;
        int i2;
        long j2;
        long j3;
        DrmInitData drmInitData;
        long j4;
        long j5;
        HlsMultivariantPlaylist hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        boolean z = hlsMultivariantPlaylist2.hasIndependentSegments;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap = new TreeMap();
        boolean z2 = false;
        String str4 = "";
        boolean z3 = z;
        HlsMediaPlaylist.ServerControl serverControl2 = serverControl;
        String optionalStringAttr = str4;
        int i3 = 0;
        String stringAttr2 = null;
        long doubleAttr = -9223372036854775807L;
        boolean optionalBooleanAttribute = false;
        long jMsToUs = 0;
        boolean z4 = false;
        int i4 = 0;
        long j6 = 0;
        int intAttr = 1;
        long intAttr2 = -9223372036854775807L;
        long doubleAttr2 = -9223372036854775807L;
        boolean z5 = false;
        DrmInitData playlistProtectionSchemes = null;
        long j7 = 0;
        DrmInitData drmInitData2 = null;
        long j8 = 0;
        boolean z6 = false;
        long j9 = -1;
        String str5 = null;
        String encryptionScheme = null;
        int i5 = 0;
        long j10 = 0;
        long longAttr = 0;
        boolean z7 = false;
        HlsMediaPlaylist.Segment segment = null;
        long timeSecondsToUs = 0;
        long j11 = 0;
        ArrayList arrayList7 = arrayList4;
        HlsMediaPlaylist.Part part2 = null;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith("#EXT")) {
                arrayList6.add(next);
            }
            if (next.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String stringAttr3 = parseStringAttr(next, REGEX_PLAYLIST_TYPE, map);
                if ("VOD".equals(stringAttr3)) {
                    i3 = 1;
                } else if ("EVENT".equals(stringAttr3)) {
                    i3 = 2;
                } else {
                    arrayList = arrayList7;
                    arrayList2 = arrayList6;
                    str2 = str5;
                    str3 = encryptionScheme;
                    j = longAttr;
                    i = i3;
                }
            } else if (next.equals("#EXT-X-I-FRAMES-ONLY")) {
                z7 = true;
            } else if (next.startsWith("#EXT-X-START")) {
                doubleAttr = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
                optionalBooleanAttribute = parseOptionalBooleanAttribute(next, REGEX_PRECISE, z2);
            } else if (next.startsWith("#EXT-X-SERVER-CONTROL")) {
                serverControl2 = parseServerControl(next);
            } else if (next.startsWith("#EXT-X-PART-INF")) {
                doubleAttr2 = (long) (parseDoubleAttr(next, REGEX_PART_TARGET_DURATION) * 1000000.0d);
            } else if (next.startsWith("#EXT-X-MAP")) {
                String stringAttr4 = parseStringAttr(next, REGEX_URI, map);
                String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map);
                if (optionalStringAttr2 != null) {
                    String[] strArrSplit = Util.split(optionalStringAttr2, "@");
                    j9 = Long.parseLong(strArrSplit[z2 ? 1 : 0]);
                    if (strArrSplit.length > 1) {
                        j7 = Long.parseLong(strArrSplit[1]);
                    }
                }
                if (j9 == -1) {
                    j7 = 0;
                }
                String str6 = str5;
                if (stringAttr2 != null && str6 == null) {
                    throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                }
                segment = new HlsMediaPlaylist.Segment(stringAttr4, j7, j9, stringAttr2, str6);
                if (j9 != -1) {
                    j7 += j9;
                }
                str5 = str6;
                j9 = -1;
            } else {
                str2 = str5;
                str5 = null;
                if (next.startsWith("#EXT-X-TARGETDURATION")) {
                    intAttr2 = 1000000 * parseIntAttr(next, REGEX_TARGET_DURATION);
                } else {
                    if (next.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                        longAttr = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                        str5 = str2;
                        j6 = longAttr;
                    } else if (next.startsWith("#EXT-X-VERSION")) {
                        intAttr = parseIntAttr(next, REGEX_VERSION);
                    } else if (next.startsWith("#EXT-X-DEFINE")) {
                        String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_IMPORT, map);
                        if (optionalStringAttr3 != null) {
                            stringAttr = (String) hlsMultivariantPlaylist2.variableDefinitions.get(optionalStringAttr3);
                            if (stringAttr != null) {
                            }
                            arrayList = arrayList7;
                            arrayList2 = arrayList6;
                            str3 = encryptionScheme;
                            j = longAttr;
                            i = i3;
                        } else {
                            optionalStringAttr3 = parseStringAttr(next, REGEX_NAME, map);
                            stringAttr = parseStringAttr(next, REGEX_VALUE, map);
                        }
                        map.put(optionalStringAttr3, stringAttr);
                        arrayList = arrayList7;
                        arrayList2 = arrayList6;
                        str3 = encryptionScheme;
                        j = longAttr;
                        i = i3;
                    } else if (next.startsWith("#EXTINF")) {
                        timeSecondsToUs = parseTimeSecondsToUs(next, REGEX_MEDIA_DURATION);
                        optionalStringAttr = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, str4, map);
                    } else {
                        String str7 = str4;
                        if (next.startsWith("#EXT-X-SKIP")) {
                            int intAttr3 = parseIntAttr(next, REGEX_SKIPPED_SEGMENTS);
                            Assertions.checkState(hlsMediaPlaylist2 != null && arrayList3.isEmpty());
                            int i6 = (int) (j6 - ((HlsMediaPlaylist) Util.castNonNull(hlsMediaPlaylist)).mediaSequence);
                            int i7 = intAttr3 + i6;
                            if (i6 < 0 || i7 > hlsMediaPlaylist2.segments.size()) {
                                throw new DeltaUpdateException();
                            }
                            str4 = str7;
                            String str8 = str2;
                            long j12 = j10;
                            while (i6 < i7) {
                                HlsMediaPlaylist.Segment segmentCopyWith = (HlsMediaPlaylist.Segment) hlsMediaPlaylist2.segments.get(i6);
                                ArrayList arrayList8 = arrayList7;
                                ArrayList arrayList9 = arrayList6;
                                if (j6 != hlsMediaPlaylist2.mediaSequence) {
                                    segmentCopyWith = segmentCopyWith.copyWith(j12, (hlsMediaPlaylist2.discontinuitySequence - i4) + segmentCopyWith.relativeDiscontinuitySequence);
                                }
                                arrayList3.add(segmentCopyWith);
                                j12 += segmentCopyWith.durationUs;
                                long j13 = segmentCopyWith.byteRangeLength;
                                if (j13 != -1) {
                                    i2 = i7;
                                    j7 = segmentCopyWith.byteRangeOffset + j13;
                                } else {
                                    i2 = i7;
                                }
                                int i8 = segmentCopyWith.relativeDiscontinuitySequence;
                                HlsMediaPlaylist.Segment segment2 = segmentCopyWith.initializationSegment;
                                DrmInitData drmInitData3 = segmentCopyWith.drmInitData;
                                String str9 = segmentCopyWith.fullSegmentEncryptionKeyUri;
                                String str10 = segmentCopyWith.encryptionIV;
                                if (str10 == null || !str10.equals(Long.toHexString(longAttr))) {
                                    str8 = segmentCopyWith.encryptionIV;
                                }
                                longAttr++;
                                i6++;
                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                drmInitData2 = drmInitData3;
                                stringAttr2 = str9;
                                j8 = j12;
                                i7 = i2;
                                i5 = i8;
                                segment = segment2;
                                arrayList7 = arrayList8;
                                arrayList6 = arrayList9;
                            }
                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                            j10 = j12;
                            str5 = str8;
                        } else {
                            ArrayList arrayList10 = arrayList7;
                            arrayList2 = arrayList6;
                            str4 = str7;
                            if (next.startsWith("#EXT-X-KEY")) {
                                String stringAttr5 = parseStringAttr(next, REGEX_METHOD, map);
                                String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, "identity", map);
                                if ("NONE".equals(stringAttr5)) {
                                    treeMap.clear();
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    arrayList7 = arrayList10;
                                    stringAttr2 = null;
                                    drmInitData2 = null;
                                } else {
                                    String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_IV, map);
                                    if (!"identity".equals(optionalStringAttr4)) {
                                        String str11 = encryptionScheme;
                                        encryptionScheme = str11 == null ? parseEncryptionScheme(stringAttr5) : str11;
                                        DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, optionalStringAttr4, map);
                                        if (drmSchemeData != null) {
                                            treeMap.put(optionalStringAttr4, drmSchemeData);
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            arrayList7 = arrayList10;
                                            stringAttr2 = null;
                                            drmInitData2 = null;
                                        }
                                        z2 = false;
                                        str5 = optionalStringAttr5;
                                        arrayList6 = arrayList2;
                                    } else if ("AES-128".equals(stringAttr5)) {
                                        stringAttr2 = parseStringAttr(next, REGEX_URI, map);
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str5 = optionalStringAttr5;
                                        arrayList7 = arrayList10;
                                    }
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    arrayList7 = arrayList10;
                                    stringAttr2 = null;
                                    z2 = false;
                                    str5 = optionalStringAttr5;
                                    arrayList6 = arrayList2;
                                }
                            } else {
                                String str12 = encryptionScheme;
                                if (next.startsWith("#EXT-X-BYTERANGE")) {
                                    String[] strArrSplit2 = Util.split(parseStringAttr(next, REGEX_BYTERANGE, map), "@");
                                    j9 = Long.parseLong(strArrSplit2[0]);
                                    if (strArrSplit2.length > 1) {
                                        j7 = Long.parseLong(strArrSplit2[1]);
                                    }
                                } else if (next.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                    i4 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    encryptionScheme = str12;
                                    str5 = str2;
                                    arrayList7 = arrayList10;
                                    arrayList6 = arrayList2;
                                    z2 = false;
                                    z4 = true;
                                } else if (next.equals("#EXT-X-DISCONTINUITY")) {
                                    i5++;
                                } else {
                                    if (next.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                        if (jMsToUs == 0) {
                                            jMsToUs = Util.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j10;
                                        } else {
                                            i = i3;
                                            str3 = str12;
                                        }
                                    } else if (next.equals("#EXT-X-GAP")) {
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        encryptionScheme = str12;
                                        str5 = str2;
                                        arrayList7 = arrayList10;
                                        arrayList6 = arrayList2;
                                        z2 = false;
                                        z6 = true;
                                    } else if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        encryptionScheme = str12;
                                        str5 = str2;
                                        arrayList7 = arrayList10;
                                        arrayList6 = arrayList2;
                                        z2 = false;
                                        z3 = true;
                                    } else if (next.equals("#EXT-X-ENDLIST")) {
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        encryptionScheme = str12;
                                        str5 = str2;
                                        arrayList7 = arrayList10;
                                        arrayList6 = arrayList2;
                                        z2 = false;
                                        z5 = true;
                                    } else if (next.startsWith("#EXT-X-RENDITION-REPORT")) {
                                        i = i3;
                                        str3 = str12;
                                        arrayList5.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.resolve(str, parseStringAttr(next, REGEX_URI, map))), parseOptionalLongAttr(next, REGEX_LAST_MSN, -1L), parseOptionalIntAttr(next, REGEX_LAST_PART, -1)));
                                    } else {
                                        i = i3;
                                        str3 = str12;
                                        if (!next.startsWith("#EXT-X-PRELOAD-HINT")) {
                                            j = longAttr;
                                            if (next.startsWith("#EXT-X-PART")) {
                                                String segmentEncryptionIV = getSegmentEncryptionIV(j, stringAttr2, str2);
                                                String stringAttr6 = parseStringAttr(next, REGEX_URI, map);
                                                long doubleAttr3 = (long) (parseDoubleAttr(next, REGEX_ATTR_DURATION) * 1000000.0d);
                                                part = part2;
                                                boolean optionalBooleanAttribute2 = parseOptionalBooleanAttribute(next, REGEX_INDEPENDENT, false) | (z3 && arrayList10.isEmpty());
                                                boolean optionalBooleanAttribute3 = parseOptionalBooleanAttribute(next, REGEX_GAP, false);
                                                String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map);
                                                if (optionalStringAttr6 != null) {
                                                    String[] strArrSplit3 = Util.split(optionalStringAttr6, "@");
                                                    j5 = Long.parseLong(strArrSplit3[0]);
                                                    if (strArrSplit3.length > 1) {
                                                        j11 = Long.parseLong(strArrSplit3[1]);
                                                    }
                                                    j4 = -1;
                                                } else {
                                                    j4 = -1;
                                                    j5 = -1;
                                                }
                                                if (j5 == j4) {
                                                    j11 = 0;
                                                }
                                                if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                    DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                    DrmInitData drmInitData4 = new DrmInitData(str3, schemeDataArr);
                                                    if (playlistProtectionSchemes == null) {
                                                        playlistProtectionSchemes = getPlaylistProtectionSchemes(str3, schemeDataArr);
                                                    }
                                                    drmInitData2 = drmInitData4;
                                                }
                                                arrayList = arrayList10;
                                                arrayList.add(new HlsMediaPlaylist.Part(stringAttr6, segment, doubleAttr3, i5, j8, drmInitData2, stringAttr2, segmentEncryptionIV, j11, j5, optionalBooleanAttribute3, optionalBooleanAttribute2, false));
                                                j8 += doubleAttr3;
                                                if (j5 != -1) {
                                                    j11 += j5;
                                                }
                                            } else {
                                                part = part2;
                                                arrayList = arrayList10;
                                                if (!next.startsWith("#")) {
                                                    String segmentEncryptionIV2 = getSegmentEncryptionIV(j, stringAttr2, str2);
                                                    long j14 = j + 1;
                                                    String strReplaceVariableReferences = replaceVariableReferences(next, map);
                                                    HlsMediaPlaylist.Segment segment3 = (HlsMediaPlaylist.Segment) map2.get(strReplaceVariableReferences);
                                                    if (j9 == -1) {
                                                        j2 = 0;
                                                    } else {
                                                        if (z7 && segment == null && segment3 == null) {
                                                            segment3 = new HlsMediaPlaylist.Segment(strReplaceVariableReferences, 0L, j7, null, null);
                                                            map2.put(strReplaceVariableReferences, segment3);
                                                        }
                                                        j2 = j7;
                                                    }
                                                    if (drmInitData2 != null || treeMap.isEmpty()) {
                                                        j3 = j14;
                                                        drmInitData = drmInitData2;
                                                    } else {
                                                        j3 = j14;
                                                        DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                        drmInitData = new DrmInitData(str3, schemeDataArr2);
                                                        if (playlistProtectionSchemes == null) {
                                                            playlistProtectionSchemes = getPlaylistProtectionSchemes(str3, schemeDataArr2);
                                                        }
                                                    }
                                                    arrayList3.add(new HlsMediaPlaylist.Segment(strReplaceVariableReferences, segment != null ? segment : segment3, optionalStringAttr, timeSecondsToUs, i5, j10, drmInitData, stringAttr2, segmentEncryptionIV2, j2, j9, z6, arrayList));
                                                    j8 = j10 + timeSecondsToUs;
                                                    arrayList7 = new ArrayList();
                                                    if (j9 != -1) {
                                                        j2 += j9;
                                                    }
                                                    j7 = j2;
                                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                    drmInitData2 = drmInitData;
                                                    str5 = str2;
                                                    optionalStringAttr = str4;
                                                    j10 = j8;
                                                    i3 = i;
                                                    part2 = part;
                                                    arrayList6 = arrayList2;
                                                    z6 = false;
                                                    j9 = -1;
                                                    timeSecondsToUs = 0;
                                                    encryptionScheme = str3;
                                                    longAttr = j3;
                                                }
                                            }
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            str5 = str2;
                                            i3 = i;
                                            part2 = part;
                                            longAttr = j;
                                            encryptionScheme = str3;
                                            arrayList7 = arrayList;
                                        } else if (part2 == null && "PART".equals(parseStringAttr(next, REGEX_PRELOAD_HINT_TYPE, map))) {
                                            String stringAttr7 = parseStringAttr(next, REGEX_URI, map);
                                            long optionalLongAttr = parseOptionalLongAttr(next, REGEX_BYTERANGE_START, -1L);
                                            long optionalLongAttr2 = parseOptionalLongAttr(next, REGEX_BYTERANGE_LENGTH, -1L);
                                            long j15 = longAttr;
                                            String segmentEncryptionIV3 = getSegmentEncryptionIV(j15, stringAttr2, str2);
                                            if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                DrmInitData drmInitData5 = new DrmInitData(str3, schemeDataArr3);
                                                if (playlistProtectionSchemes == null) {
                                                    playlistProtectionSchemes = getPlaylistProtectionSchemes(str3, schemeDataArr3);
                                                }
                                                drmInitData2 = drmInitData5;
                                            }
                                            if (optionalLongAttr == -1 || optionalLongAttr2 != -1) {
                                                part2 = new HlsMediaPlaylist.Part(stringAttr7, segment, 0L, i5, j8, drmInitData2, stringAttr2, segmentEncryptionIV3, optionalLongAttr != -1 ? optionalLongAttr : 0L, optionalLongAttr2, false, false, true);
                                            }
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            longAttr = j15;
                                            str5 = str2;
                                            arrayList7 = arrayList10;
                                            i3 = i;
                                            arrayList6 = arrayList2;
                                            encryptionScheme = str3;
                                        }
                                    }
                                    arrayList = arrayList10;
                                    j = longAttr;
                                }
                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                encryptionScheme = str12;
                                str5 = str2;
                                arrayList7 = arrayList10;
                            }
                            arrayList6 = arrayList2;
                        }
                    }
                    z2 = false;
                }
                str5 = str2;
                z2 = false;
            }
            part = part2;
            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
            hlsMediaPlaylist2 = hlsMediaPlaylist;
            str5 = str2;
            i3 = i;
            part2 = part;
            longAttr = j;
            encryptionScheme = str3;
            arrayList7 = arrayList;
            arrayList6 = arrayList2;
            z2 = false;
        }
        int i9 = i3;
        HlsMediaPlaylist.Part part3 = part2;
        ArrayList arrayList11 = arrayList7;
        ArrayList arrayList12 = arrayList6;
        HashMap map3 = new HashMap();
        for (int i10 = 0; i10 < arrayList5.size(); i10++) {
            HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList5.get(i10);
            long size = renditionReport.lastMediaSequence;
            if (size == -1) {
                size = (j6 + arrayList3.size()) - (arrayList11.isEmpty() ? 1L : 0L);
            }
            int size2 = renditionReport.lastPartIndex;
            if (size2 == -1 && doubleAttr2 != -9223372036854775807L) {
                size2 = (arrayList11.isEmpty() ? ((HlsMediaPlaylist.Segment) Iterables.getLast(arrayList3)).parts : arrayList11).size() - 1;
            }
            Uri uri = renditionReport.playlistUri;
            map3.put(uri, new HlsMediaPlaylist.RenditionReport(uri, size, size2));
        }
        if (part3 != null) {
            arrayList11.add(part3);
        }
        return new HlsMediaPlaylist(i9, str, arrayList12, doubleAttr, optionalBooleanAttribute, jMsToUs, z4, i4, j6, intAttr, intAttr2, doubleAttr2, z3, z5, jMsToUs != 0, playlistProtectionSchemes, arrayList3, arrayList11, serverControl2, map3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0331  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HlsMultivariantPlaylist parseMultivariantPlaylist(LineIterator lineIterator, String str) throws ParserException, NumberFormatException {
        String str2;
        String stringAttr;
        String stringAttr2;
        Format.Builder language;
        Uri uriResolveToUri;
        Metadata metadata;
        ArrayList arrayList;
        String mediaMimeType;
        ArrayList arrayList2;
        int i;
        String str3;
        String mediaMimeType2;
        int i2;
        ArrayList arrayList3;
        String str4;
        String strReplaceVariableReferences;
        String str5 = str;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        while (true) {
            String str6 = "application/x-mpegURL";
            if (!lineIterator.hasNext()) {
                ArrayList arrayList12 = arrayList5;
                ArrayList arrayList13 = arrayList6;
                ArrayList arrayList14 = arrayList7;
                ArrayList arrayList15 = arrayList8;
                ArrayList arrayList16 = arrayList9;
                ArrayList arrayList17 = arrayList11;
                ArrayList arrayList18 = arrayList10;
                boolean z3 = z;
                ArrayList arrayList19 = new ArrayList();
                HashSet hashSet = new HashSet();
                int i3 = 0;
                while (i3 < arrayList4.size()) {
                    HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) arrayList4.get(i3);
                    if (hashSet.add(variant.url)) {
                        Assertions.checkState(variant.format.metadata == null);
                        i2 = 1;
                        arrayList19.add(variant.copyWithFormat(variant.format.buildUpon().setMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) Assertions.checkNotNull((ArrayList) map.get(variant.url))))).build()));
                    } else {
                        i2 = 1;
                    }
                    i3 += i2;
                }
                List listEmptyList = null;
                Format formatBuild = null;
                int i4 = 0;
                while (i4 < arrayList16.size()) {
                    ArrayList arrayList20 = arrayList16;
                    str2 = (String) arrayList20.get(i4);
                    stringAttr = parseStringAttr(str2, REGEX_GROUP_ID, map2);
                    stringAttr2 = parseStringAttr(str2, REGEX_NAME, map2);
                    language = new Format.Builder().setId(stringAttr + ":" + stringAttr2).setLabel(stringAttr2).setContainerMimeType(str6).setSelectionFlags(parseSelectionFlags(str2)).setRoleFlags(parseRoleFlags(str2, map2)).setLanguage(parseOptionalStringAttr(str2, REGEX_LANGUAGE, map2));
                    String optionalStringAttr = parseOptionalStringAttr(str2, REGEX_URI, map2);
                    uriResolveToUri = optionalStringAttr == null ? null : UriUtil.resolveToUri(str5, optionalStringAttr);
                    arrayList16 = arrayList20;
                    String str7 = str6;
                    metadata = new Metadata(new HlsTrackMetadataEntry(stringAttr, stringAttr2, Collections.emptyList()));
                    String stringAttr3 = parseStringAttr(str2, REGEX_TYPE, map2);
                    stringAttr3.hashCode();
                    switch (stringAttr3) {
                        case "SUBTITLES":
                            arrayList = arrayList13;
                            HlsMultivariantPlaylist.Variant variantWithSubtitleGroup = getVariantWithSubtitleGroup(arrayList4, stringAttr);
                            if (variantWithSubtitleGroup != null) {
                                String codecsOfType = Util.getCodecsOfType(variantWithSubtitleGroup.format.codecs, 3);
                                language.setCodecs(codecsOfType);
                                mediaMimeType = MimeTypes.getMediaMimeType(codecsOfType);
                            } else {
                                mediaMimeType = null;
                            }
                            if (mediaMimeType == null) {
                                mediaMimeType = "text/vtt";
                            }
                            language.setSampleMimeType(mediaMimeType).setMetadata(metadata);
                            if (uriResolveToUri == null) {
                                arrayList2 = arrayList14;
                                Log.w("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                                break;
                            } else {
                                HlsMultivariantPlaylist.Rendition rendition = new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2);
                                arrayList2 = arrayList14;
                                arrayList2.add(rendition);
                                break;
                            }
                        case "CLOSED-CAPTIONS":
                            arrayList = arrayList13;
                            String stringAttr4 = parseStringAttr(str2, REGEX_INSTREAM_ID, map2);
                            if (stringAttr4.startsWith("CC")) {
                                i = Integer.parseInt(stringAttr4.substring(2));
                                str3 = "application/cea-608";
                            } else {
                                i = Integer.parseInt(stringAttr4.substring(7));
                                str3 = "application/cea-708";
                            }
                            if (listEmptyList == null) {
                                listEmptyList = new ArrayList();
                            }
                            language.setSampleMimeType(str3).setAccessibilityChannel(i);
                            listEmptyList.add(language.build());
                            arrayList2 = arrayList14;
                            break;
                        case "AUDIO":
                            ArrayList arrayList21 = arrayList12;
                            HlsMultivariantPlaylist.Variant variantWithAudioGroup = getVariantWithAudioGroup(arrayList4, stringAttr);
                            if (variantWithAudioGroup != null) {
                                arrayList12 = arrayList21;
                                String codecsOfType2 = Util.getCodecsOfType(variantWithAudioGroup.format.codecs, 1);
                                language.setCodecs(codecsOfType2);
                                mediaMimeType2 = MimeTypes.getMediaMimeType(codecsOfType2);
                            } else {
                                arrayList12 = arrayList21;
                                mediaMimeType2 = null;
                            }
                            String optionalStringAttr2 = parseOptionalStringAttr(str2, REGEX_CHANNELS, map2);
                            if (optionalStringAttr2 != null) {
                                language.setChannelCount(Integer.parseInt(Util.splitAtFirst(optionalStringAttr2, "/")[0]));
                                if ("audio/eac3".equals(mediaMimeType2) && optionalStringAttr2.endsWith("/JOC")) {
                                    language.setCodecs("ec+3");
                                    mediaMimeType2 = "audio/eac3-joc";
                                }
                            }
                            language.setSampleMimeType(mediaMimeType2);
                            if (uriResolveToUri != null) {
                                language.setMetadata(metadata);
                                arrayList = arrayList13;
                                arrayList.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2));
                            } else {
                                arrayList = arrayList13;
                                if (variantWithAudioGroup != null) {
                                    formatBuild = language.build();
                                }
                            }
                            arrayList2 = arrayList14;
                            break;
                        case "VIDEO":
                            HlsMultivariantPlaylist.Variant variantWithVideoGroup = getVariantWithVideoGroup(arrayList4, stringAttr);
                            if (variantWithVideoGroup != null) {
                                Format format = variantWithVideoGroup.format;
                                String codecsOfType3 = Util.getCodecsOfType(format.codecs, 2);
                                language.setCodecs(codecsOfType3).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType3)).setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate);
                            }
                            if (uriResolveToUri != null) {
                                language.setMetadata(metadata);
                                arrayList12.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2));
                            }
                        default:
                            arrayList2 = arrayList14;
                            arrayList = arrayList13;
                            break;
                    }
                    i4++;
                    str5 = str;
                    arrayList13 = arrayList;
                    arrayList14 = arrayList2;
                    str6 = str7;
                }
                ArrayList arrayList22 = arrayList14;
                ArrayList arrayList23 = arrayList13;
                if (z2) {
                    listEmptyList = Collections.emptyList();
                }
                return new HlsMultivariantPlaylist(str, arrayList17, arrayList19, arrayList12, arrayList23, arrayList22, arrayList15, formatBuild, listEmptyList, z3, map2, arrayList18);
            }
            String next = lineIterator.next();
            if (next.startsWith("#EXT")) {
                arrayList11.add(next);
            }
            boolean zStartsWith = next.startsWith("#EXT-X-I-FRAME-STREAM-INF");
            boolean z4 = z;
            if (next.startsWith("#EXT-X-DEFINE")) {
                map2.put(parseStringAttr(next, REGEX_NAME, map2), parseStringAttr(next, REGEX_VALUE, map2));
            } else if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                z = true;
            } else if (next.startsWith("#EXT-X-MEDIA")) {
                arrayList9.add(next);
            } else {
                if (next.startsWith("#EXT-X-SESSION-KEY")) {
                    DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr(next, REGEX_KEYFORMAT, "identity", map2), map2);
                    if (drmSchemeData != null) {
                        arrayList3 = arrayList8;
                        arrayList10.add(new DrmInitData(parseEncryptionScheme(parseStringAttr(next, REGEX_METHOD, map2)), drmSchemeData));
                    }
                } else {
                    arrayList3 = arrayList8;
                    if (next.startsWith("#EXT-X-STREAM-INF") || zStartsWith) {
                        boolean zContains = z2 | next.contains("CLOSED-CAPTIONS=NONE");
                        int i5 = zStartsWith ? LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM : 0;
                        int intAttr = parseIntAttr(next, REGEX_BANDWIDTH);
                        ArrayList arrayList24 = arrayList10;
                        int optionalIntAttr = parseOptionalIntAttr(next, REGEX_AVERAGE_BANDWIDTH, -1);
                        String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_CODECS, map2);
                        ArrayList arrayList25 = arrayList11;
                        String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_MIME, map2);
                        ArrayList arrayList26 = arrayList7;
                        ArrayList arrayList27 = arrayList6;
                        boolean zEquals = TextUtils.equals(parseOptionalStringAttr(next, REGEX_CACHED, map2), "true");
                        String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_DOC_ID, map2);
                        ArrayList arrayList28 = arrayList5;
                        String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_DOC_FILENAME, map2);
                        ArrayList arrayList29 = arrayList9;
                        String optionalStringAttr7 = parseOptionalStringAttr(next, REGEX_ACCOUNT, map2);
                        HashMap map3 = map;
                        String optionalStringAttr8 = parseOptionalStringAttr(next, REGEX_RESOLUTION, map2);
                        if (optionalStringAttr8 != null) {
                            String[] strArrSplit = Util.split(optionalStringAttr8, "x");
                            int i6 = Integer.parseInt(strArrSplit[0]);
                            int i7 = Integer.parseInt(strArrSplit[1]);
                            if (i6 <= 0 || i7 <= 0) {
                                str4 = optionalStringAttr6;
                                i7 = -1;
                                i6 = -1;
                            } else {
                                str4 = optionalStringAttr6;
                            }
                            String optionalStringAttr9 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map2);
                            float f = optionalStringAttr9 != null ? Float.parseFloat(optionalStringAttr9) : -1.0f;
                            String optionalStringAttr10 = parseOptionalStringAttr(next, REGEX_VIDEO, map2);
                            String optionalStringAttr11 = parseOptionalStringAttr(next, REGEX_AUDIO, map2);
                            String optionalStringAttr12 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map2);
                            String optionalStringAttr13 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map2);
                            if (zStartsWith) {
                                strReplaceVariableReferences = parseStringAttr(next, REGEX_URI, map2);
                            } else {
                                if (!lineIterator.hasNext()) {
                                    throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                                }
                                strReplaceVariableReferences = replaceVariableReferences(lineIterator.next(), map2);
                            }
                            Uri uriResolveToUri2 = UriUtil.resolveToUri(str5, strReplaceVariableReferences);
                            arrayList4.add(new HlsMultivariantPlaylist.Variant(uriResolveToUri2, new Format.Builder().setId(arrayList4.size()).setContainerMimeType("application/x-mpegURL").setCodecs(optionalStringAttr3).setSampleMimeType(optionalStringAttr4).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i6).setHeight(i7).setFrameRate(f).setRoleFlags(i5).setCached(zEquals).setDocumentId(optionalStringAttr5).setDocumentFilename(str4).setCurrentAccount(optionalStringAttr7).build(), optionalStringAttr10, optionalStringAttr11, optionalStringAttr12, optionalStringAttr13));
                            map = map3;
                            ArrayList arrayList30 = (ArrayList) map.get(uriResolveToUri2);
                            if (arrayList30 == null) {
                                arrayList30 = new ArrayList();
                                map.put(uriResolveToUri2, arrayList30);
                            }
                            arrayList30.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr10, optionalStringAttr11, optionalStringAttr12, optionalStringAttr13));
                            z = z4;
                            arrayList8 = arrayList3;
                            z2 = zContains;
                            arrayList10 = arrayList24;
                            arrayList11 = arrayList25;
                            arrayList7 = arrayList26;
                            arrayList6 = arrayList27;
                            arrayList5 = arrayList28;
                            arrayList9 = arrayList29;
                        }
                    }
                }
                z = z4;
                arrayList8 = arrayList3;
            }
            arrayList3 = arrayList8;
            z = z4;
            arrayList8 = arrayList3;
        }
    }

    private static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? "YES".equals(matcher.group(1)) : z;
    }

    private static double parseOptionalDoubleAttr(String str, Pattern pattern, double d) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Double.parseDouble((String) Assertions.checkNotNull(matcher.group(1))) : d;
    }

    private static int parseOptionalIntAttr(String str, Pattern pattern, int i) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))) : i;
    }

    private static long parseOptionalLongAttr(String str, Pattern pattern, long j) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Long.parseLong((String) Assertions.checkNotNull(matcher.group(1))) : j;
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) Assertions.checkNotNull(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, Map map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    private static int parseRoleFlags(String str, Map map) {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map);
        if (TextUtils.isEmpty(optionalStringAttr)) {
            return 0;
        }
        String[] strArrSplit = Util.split(optionalStringAttr, ",");
        int i = Util.contains(strArrSplit, "public.accessibility.describes-video") ? LiteMode.FLAG_CALLS_ANIMATIONS : 0;
        if (Util.contains(strArrSplit, "public.accessibility.transcribes-spoken-dialog")) {
            i |= LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM;
        }
        if (Util.contains(strArrSplit, "public.accessibility.describes-music-and-sound")) {
            i |= 1024;
        }
        return Util.contains(strArrSplit, "public.easy-to-read") ? i | LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int parseSelectionFlags(String str) {
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false);
        ?? r0 = optionalBooleanAttribute;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            r0 = (optionalBooleanAttribute ? 1 : 0) | 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false) ? r0 | 4 : r0;
    }

    private static HlsMediaPlaylist.ServerControl parseServerControl(String str) {
        double optionalDoubleAttr = parseOptionalDoubleAttr(str, REGEX_CAN_SKIP_UNTIL, -9.223372036854776E18d);
        long j = optionalDoubleAttr == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr * 1000000.0d);
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_CAN_SKIP_DATE_RANGES, false);
        double optionalDoubleAttr2 = parseOptionalDoubleAttr(str, REGEX_HOLD_BACK, -9.223372036854776E18d);
        long j2 = optionalDoubleAttr2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr2 * 1000000.0d);
        double optionalDoubleAttr3 = parseOptionalDoubleAttr(str, REGEX_PART_HOLD_BACK, -9.223372036854776E18d);
        return new HlsMediaPlaylist.ServerControl(j, optionalBooleanAttribute, j2, optionalDoubleAttr3 != -9.223372036854776E18d ? (long) (optionalDoubleAttr3 * 1000000.0d) : -9223372036854775807L, parseOptionalBooleanAttribute(str, REGEX_CAN_BLOCK_RELOAD, false));
    }

    private static String parseStringAttr(String str, Pattern pattern, Map map) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (optionalStringAttr != null) {
            return optionalStringAttr;
        }
        throw ParserException.createForMalformedManifest("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    private static long parseTimeSecondsToUs(String str, Pattern pattern) {
        return new BigDecimal(parseStringAttr(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }

    private static String replaceVariableReferences(String str, Map map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement((String) map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        String strTrim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!checkPlaylistHeader(bufferedReader)) {
                throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    Util.closeQuietly(bufferedReader);
                    throw ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                }
                strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (!strTrim.startsWith("#EXT-X-STREAM-INF")) {
                        if (strTrim.startsWith("#EXT-X-TARGETDURATION") || strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE") || strTrim.startsWith("#EXTINF") || strTrim.startsWith("#EXT-X-KEY") || strTrim.startsWith("#EXT-X-BYTERANGE") || strTrim.equals("#EXT-X-DISCONTINUITY") || strTrim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || strTrim.equals("#EXT-X-ENDLIST")) {
                            break;
                        }
                        arrayDeque.add(strTrim);
                    } else {
                        arrayDeque.add(strTrim);
                        return parseMultivariantPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                    }
                }
            }
            arrayDeque.add(strTrim);
            return parseMediaPlaylist(this.multivariantPlaylist, this.previousMediaPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
        } finally {
            Util.closeQuietly(bufferedReader);
        }
    }
}
