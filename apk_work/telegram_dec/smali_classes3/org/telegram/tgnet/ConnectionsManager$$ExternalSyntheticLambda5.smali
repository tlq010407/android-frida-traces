.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;->f$1:J

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$zZuVkPJ-rAGxzl51aXSfDOmwvak(Ljava/lang/String;J)V

    return-void
.end method
