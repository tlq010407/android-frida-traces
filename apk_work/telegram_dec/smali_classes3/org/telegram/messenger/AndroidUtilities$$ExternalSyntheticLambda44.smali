.class public final synthetic Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback0Return;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback0Return;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/messenger/Utilities$Callback0Return;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/messenger/Utilities$Callback0Return;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->$r8$lambda$k41OP0keIKkPFzkTmpmnks772_4(Lorg/telegram/messenger/Utilities$Callback0Return;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
