package org.telegram.messenger.audioinfo.m4a;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.telegram.messenger.audioinfo.AudioInfo;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class M4AInfo extends AudioInfo {
    static final Logger LOGGER = Logger.getLogger(M4AInfo.class.getName());
    private final Level debugLevel;
    private byte rating;
    private BigDecimal speed;
    private short tempo;
    private BigDecimal volume;

    public M4AInfo(InputStream inputStream) {
        this(inputStream, Level.FINEST);
    }

    public M4AInfo(InputStream inputStream, Level level) {
        this.debugLevel = level;
        MP4Input mP4Input = new MP4Input(inputStream);
        Logger logger = LOGGER;
        if (logger.isLoggable(level)) {
            logger.log(level, mP4Input.toString());
        }
        ftyp(mP4Input.nextChild("ftyp"));
        moov(mP4Input.nextChildUpTo("moov"));
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:493)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:496)
        */
    void data(org.telegram.messenger.audioinfo.m4a.MP4Atom r8) {
        /*
            Method dump skipped, instructions count: 820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.audioinfo.m4a.M4AInfo.data(org.telegram.messenger.audioinfo.m4a.MP4Atom):void");
    }

    void ftyp(MP4Atom mP4Atom) {
        StringBuilder sb;
        String str;
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        String strTrim = mP4Atom.readString(4, "ISO8859_1").trim();
        this.brand = strTrim;
        if (!strTrim.matches("M4V|MP4|mp42|isom")) {
            if (!this.brand.matches("M4A|M4P")) {
                sb = new StringBuilder();
                sb.append(mP4Atom.getPath());
                sb.append(": brand=");
                sb.append(this.brand);
                str = " (expected M4A or M4P)";
            }
            this.version = String.valueOf(mP4Atom.readInt());
        }
        sb = new StringBuilder();
        sb.append(mP4Atom.getPath());
        sb.append(": brand=");
        sb.append(this.brand);
        str = " (experimental)";
        sb.append(str);
        logger.warning(sb.toString());
        this.version = String.valueOf(mP4Atom.readInt());
    }

    void ilst(MP4Atom mP4Atom) {
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        while (mP4Atom.hasMoreChildren()) {
            MP4Atom mP4AtomNextChild = mP4Atom.nextChild();
            Logger logger2 = LOGGER;
            if (logger2.isLoggable(this.debugLevel)) {
                logger2.log(this.debugLevel, mP4AtomNextChild.toString());
            }
            if (mP4AtomNextChild.getRemaining() != 0) {
                data(mP4AtomNextChild.nextChildUpTo(RemoteMessageConst.DATA));
            } else if (logger2.isLoggable(this.debugLevel)) {
                logger2.log(this.debugLevel, mP4AtomNextChild.getPath() + ": contains no value");
            }
        }
    }

    void mdhd(MP4Atom mP4Atom) {
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        byte b = mP4Atom.readByte();
        mP4Atom.skip(3);
        mP4Atom.skip(b == 1 ? 16 : 8);
        int i = mP4Atom.readInt();
        long j = b == 1 ? mP4Atom.readLong() : mP4Atom.readInt();
        if (this.duration == 0) {
            this.duration = (j * 1000) / i;
            return;
        }
        if (logger.isLoggable(this.debugLevel)) {
            long j2 = (j * 1000) / i;
            if (Math.abs(this.duration - j2) > 2) {
                logger.log(this.debugLevel, "mdhd: duration " + this.duration + " -> " + j2);
            }
        }
    }

    void mdia(MP4Atom mP4Atom) {
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        mdhd(mP4Atom.nextChild("mdhd"));
    }

    void meta(MP4Atom mP4Atom) {
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        mP4Atom.skip(4);
        while (mP4Atom.hasMoreChildren()) {
            MP4Atom mP4AtomNextChild = mP4Atom.nextChild();
            if ("ilst".equals(mP4AtomNextChild.getType())) {
                ilst(mP4AtomNextChild);
                return;
            }
        }
    }

    void moov(MP4Atom mP4Atom) {
        MP4Atom mP4AtomNextChild;
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        while (mP4Atom.hasMoreChildren()) {
            mP4AtomNextChild = mP4Atom.nextChild();
            String type = mP4AtomNextChild.getType();
            type.hashCode();
            switch (type) {
                case "mvhd":
                    mvhd(mP4AtomNextChild);
                    break;
                case "trak":
                    trak(mP4AtomNextChild);
                    break;
                case "udta":
                    udta(mP4AtomNextChild);
                    break;
            }
        }
    }

    void mvhd(MP4Atom mP4Atom) {
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        byte b = mP4Atom.readByte();
        mP4Atom.skip(3);
        mP4Atom.skip(b == 1 ? 16 : 8);
        int i = mP4Atom.readInt();
        long j = b == 1 ? mP4Atom.readLong() : mP4Atom.readInt();
        if (this.duration == 0) {
            this.duration = (j * 1000) / i;
        } else if (logger.isLoggable(this.debugLevel)) {
            long j2 = (j * 1000) / i;
            if (Math.abs(this.duration - j2) > 2) {
                logger.log(this.debugLevel, "mvhd: duration " + this.duration + " -> " + j2);
            }
        }
        this.speed = mP4Atom.readIntegerFixedPoint();
        this.volume = mP4Atom.readShortFixedPoint();
    }

    void trak(MP4Atom mP4Atom) {
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        mdia(mP4Atom.nextChildUpTo("mdia"));
    }

    void udta(MP4Atom mP4Atom) {
        Logger logger = LOGGER;
        if (logger.isLoggable(this.debugLevel)) {
            logger.log(this.debugLevel, mP4Atom.toString());
        }
        while (mP4Atom.hasMoreChildren()) {
            MP4Atom mP4AtomNextChild = mP4Atom.nextChild();
            if ("meta".equals(mP4AtomNextChild.getType())) {
                meta(mP4AtomNextChild);
                return;
            }
        }
    }
}
