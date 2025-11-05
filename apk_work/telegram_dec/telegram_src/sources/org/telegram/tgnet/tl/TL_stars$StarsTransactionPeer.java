package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TL_stars$StarsTransactionPeer extends TLObject {
    public TLRPC.Peer peer;

    public static TL_stars$StarsTransactionPeer TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
        TL_stars$StarsTransactionPeer tL_stars$TL_starsTransactionPeer;
        switch (i) {
            case -1779253276:
                tL_stars$TL_starsTransactionPeer = new TL_stars$StarsTransactionPeer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransactionPeerUnsupported
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1779253276);
                    }
                };
                break;
            case -1269320843:
                tL_stars$TL_starsTransactionPeer = new TL_stars$StarsTransactionPeer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransactionPeerAppStore
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-1269320843);
                    }
                };
                break;
            case -670195363:
                tL_stars$TL_starsTransactionPeer = new TL_stars$TL_starsTransactionPeer();
                break;
            case -382740222:
                tL_stars$TL_starsTransactionPeer = new TL_stars$StarsTransactionPeer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransactionPeerFragment
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-382740222);
                    }
                };
                break;
            case -110658899:
                tL_stars$TL_starsTransactionPeer = new TL_stars$StarsTransactionPeer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransactionPeerAPI
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(-110658899);
                    }
                };
                break;
            case 621656824:
                tL_stars$TL_starsTransactionPeer = new TL_stars$StarsTransactionPeer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransactionPeerPremiumBot
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(621656824);
                    }
                };
                break;
            case 1617438738:
                tL_stars$TL_starsTransactionPeer = new TL_stars$StarsTransactionPeer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransactionPeerAds
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(1617438738);
                    }
                };
                break;
            case 2069236235:
                tL_stars$TL_starsTransactionPeer = new TL_stars$StarsTransactionPeer() { // from class: org.telegram.tgnet.tl.TL_stars$TL_starsTransactionPeerPlayMarket
                    @Override // org.telegram.tgnet.TLObject
                    public void readParams(InputSerializedData inputSerializedData2, boolean z2) {
                    }

                    @Override // org.telegram.tgnet.TLObject
                    public void serializeToStream(OutputSerializedData outputSerializedData) {
                        outputSerializedData.writeInt32(2069236235);
                    }
                };
                break;
            default:
                tL_stars$TL_starsTransactionPeer = null;
                break;
        }
        if (tL_stars$TL_starsTransactionPeer == null && z) {
            throw new RuntimeException(String.format("can't parse magic %x in StarsTransactionPeer", Integer.valueOf(i)));
        }
        if (tL_stars$TL_starsTransactionPeer != null) {
            tL_stars$TL_starsTransactionPeer.readParams(inputSerializedData, z);
        }
        return tL_stars$TL_starsTransactionPeer;
    }
}
