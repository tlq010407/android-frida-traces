.class public final synthetic Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/LanguageDetector$StringCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TranslateController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:Lorg/telegram/messenger/TranslateController$MessageKey;

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/TranslateController;

    iput-object p2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/messenger/TranslateController$MessageKey;

    iput-object p4, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/String;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/TranslateController;

    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/messenger/TranslateController$MessageKey;

    iget-object v3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/TranslateController;->$r8$lambda$ftODgu9K8SchH-nSs9AHw5-MHe4(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$MessageKey;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method
