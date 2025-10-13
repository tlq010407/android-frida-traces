.class public final synthetic Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TranslateController;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback3;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/Utilities$Callback3;ILjava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/messenger/TranslateController;

    iput-object p2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/messenger/Utilities$Callback3;

    iput p3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$2:I

    iput-object p4, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$3:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$4:J

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/messenger/TranslateController;

    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/messenger/Utilities$Callback3;

    iget v2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$2:I

    iget-object v3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$3:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda14;->f$4:J

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/TranslateController;->$r8$lambda$ukJB-g-1i0_76F-vZBWNx3GxUEw(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/Utilities$Callback3;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
