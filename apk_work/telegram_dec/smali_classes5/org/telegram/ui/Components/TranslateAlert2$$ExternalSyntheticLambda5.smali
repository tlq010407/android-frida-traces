.class public final synthetic Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Exception;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/TranslateAlert2;->$r8$lambda$wVbfhXUWEzyJxJsDzk8KG37uvxk(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Exception;)V

    return-void
.end method
