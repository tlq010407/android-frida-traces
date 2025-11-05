package org.telegram.messenger.audioinfo.m4a;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.IOException;
import org.telegram.messenger.audioinfo.util.PositionInputStream;
import org.telegram.messenger.audioinfo.util.RangeInputStream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class MP4Box {
    private MP4Atom child;
    protected final DataInput data;
    private final PositionInputStream input;
    private final MP4Box parent;
    private final String type;

    public MP4Box(PositionInputStream positionInputStream, MP4Box mP4Box, String str) {
        this.input = positionInputStream;
        this.parent = mP4Box;
        this.type = str;
        this.data = new DataInputStream(positionInputStream);
    }

    protected MP4Atom getChild() {
        return this.child;
    }

    public PositionInputStream getInput() {
        return this.input;
    }

    public MP4Box getParent() {
        return this.parent;
    }

    public long getPosition() {
        return this.input.getPosition();
    }

    public String getType() {
        return this.type;
    }

    public MP4Atom nextChild() {
        MP4Atom mP4Atom = this.child;
        if (mP4Atom != null) {
            mP4Atom.skip();
        }
        int i = this.data.readInt();
        byte[] bArr = new byte[4];
        this.data.readFully(bArr);
        MP4Atom mP4Atom2 = new MP4Atom(i == 1 ? new RangeInputStream(this.input, 16L, this.data.readLong() - 16) : new RangeInputStream(this.input, 8L, i - 8), this, new String(bArr, "ISO8859_1"));
        this.child = mP4Atom2;
        return mP4Atom2;
    }

    public MP4Atom nextChild(String str) throws IOException {
        MP4Atom mP4AtomNextChild = nextChild();
        if (mP4AtomNextChild.getType().matches(str)) {
            return mP4AtomNextChild;
        }
        throw new IOException("atom type mismatch, expected " + str + ", got " + mP4AtomNextChild.getType());
    }
}
