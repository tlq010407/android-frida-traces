.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Landroid/content/SharedPreferences;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda42;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda42;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda42;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda42;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda42;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda42;->f$2:[Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$gJ4Tgf3WjAw0jqVPtcecofh23OM(Lorg/telegram/messenger/MediaDataController;Landroid/content/SharedPreferences;[ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
