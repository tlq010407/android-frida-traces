package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.upstream.ParsingLoadable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface HlsPlaylistParserFactory {
    ParsingLoadable.Parser createPlaylistParser();

    ParsingLoadable.Parser createPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist);
}
