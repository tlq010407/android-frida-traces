package org.telegram.ui.Business;

import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account$connectedBots;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class BusinessChatbotController {
    private static volatile BusinessChatbotController[] Instance = new BusinessChatbotController[4];
    private static final Object[] lockObjects = new Object[4];
    private ArrayList callbacks = new ArrayList();
    private final int currentAccount;
    private long lastTime;
    private boolean loaded;
    private boolean loading;
    private TL_account$connectedBots value;

    static {
        for (int i = 0; i < 4; i++) {
            lockObjects[i] = new Object();
        }
    }

    private BusinessChatbotController(int i) {
        this.currentAccount = i;
    }

    public static BusinessChatbotController getInstance(int i) {
        BusinessChatbotController businessChatbotController = Instance[i];
        if (businessChatbotController == null) {
            synchronized (lockObjects[i]) {
                try {
                    businessChatbotController = Instance[i];
                    if (businessChatbotController == null) {
                        BusinessChatbotController[] businessChatbotControllerArr = Instance;
                        BusinessChatbotController businessChatbotController2 = new BusinessChatbotController(i);
                        businessChatbotControllerArr[i] = businessChatbotController2;
                        businessChatbotController = businessChatbotController2;
                    }
                } finally {
                }
            }
        }
        return businessChatbotController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(TLObject tLObject) {
        this.loading = false;
        TL_account$connectedBots tL_account$connectedBots = tLObject instanceof TL_account$connectedBots ? (TL_account$connectedBots) tLObject : null;
        this.value = tL_account$connectedBots;
        if (tL_account$connectedBots != null) {
            MessagesController.getInstance(this.currentAccount).putUsers(this.value.users, false);
        }
        this.lastTime = System.currentTimeMillis();
        this.loaded = true;
        for (int i = 0; i < this.callbacks.size(); i++) {
            if (this.callbacks.get(i) != null) {
                ((Utilities.Callback) this.callbacks.get(i)).run(this.value);
            }
        }
        this.callbacks.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$1(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessChatbotController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$0(tLObject);
            }
        });
    }

    public void invalidate(boolean z) {
        this.loaded = false;
        if (z) {
            load(null);
        }
    }

    public void load(Utilities.Callback callback) {
        boolean z;
        this.callbacks.add(callback);
        if (this.loading) {
            return;
        }
        if (System.currentTimeMillis() - this.lastTime > UcsLib.NATIVE_VERIFY_SIGNATURE_FAIL || !(z = this.loaded)) {
            this.loading = true;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLObject() { // from class: org.telegram.tgnet.tl.TL_account$getConnectedBots
                @Override // org.telegram.tgnet.TLObject
                public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z2) {
                    return TL_account$connectedBots.TLdeserialize(inputSerializedData, i, z2);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(OutputSerializedData outputSerializedData) {
                    outputSerializedData.writeInt32(1319421967);
                }
            }, new RequestDelegate() { // from class: org.telegram.ui.Business.BusinessChatbotController$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$1(tLObject, tL_error);
                }
            });
        } else if (z) {
            for (int i = 0; i < this.callbacks.size(); i++) {
                if (this.callbacks.get(i) != null) {
                    ((Utilities.Callback) this.callbacks.get(i)).run(this.value);
                }
            }
            this.callbacks.clear();
        }
    }
}
