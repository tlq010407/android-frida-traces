.class public abstract synthetic Lorg/telegram/messenger/voip/JNIUtilities$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/net/LinkProperties;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
