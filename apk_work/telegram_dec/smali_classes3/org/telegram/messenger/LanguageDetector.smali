.class public Lorg/telegram/messenger/LanguageDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/LanguageDetector$StringCallback;,
        Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$A9hSaUSYsiHXwXl3Wg4NimNwdkM(Lorg/telegram/messenger/LanguageDetector$StringCallback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/LanguageDetector;->lambda$detectLanguage$0(Lorg/telegram/messenger/LanguageDetector$StringCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AoS_Dilvh2Sr5L6lsNQg9lI_0nY(Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/LanguageDetector;->lambda$detectLanguage$1(Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;Z)V

    return-void
.end method

.method public static detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;Z)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza(Landroid/content/Context;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/mlkit/nl/languageid/LanguageIdentification;->getClient()Lcom/google/mlkit/nl/languageid/LanguageIdentifier;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/mlkit/nl/languageid/LanguageIdentifier;->identifyLanguage(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LanguageDetector$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/telegram/messenger/LanguageDetector$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/LanguageDetector$StringCallback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LanguageDetector$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2}, Lorg/telegram/messenger/LanguageDetector$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_1
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;->run(Ljava/lang/Exception;)V

    :cond_1
    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    goto :goto_4

    :goto_2
    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;->run(Ljava/lang/Exception;)V

    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    if-nez p3, :cond_3

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;Z)V

    goto :goto_4

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2, v1}, Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;->run(Ljava/lang/Exception;)V

    :cond_4
    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_4
    return-void
.end method

.method public static hasSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$detectLanguage$0(Lorg/telegram/messenger/LanguageDetector$StringCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/LanguageDetector$StringCallback;->run(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$detectLanguage$1(Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;->run(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
