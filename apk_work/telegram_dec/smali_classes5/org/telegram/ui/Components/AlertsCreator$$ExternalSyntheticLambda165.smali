.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda165;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Updates;


# direct methods
.method public synthetic constructor <init>(ILorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda165;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda165;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda165;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda165;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$U64r3EygPhjeVgFvXeeLrG3Pefg(ILorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method
