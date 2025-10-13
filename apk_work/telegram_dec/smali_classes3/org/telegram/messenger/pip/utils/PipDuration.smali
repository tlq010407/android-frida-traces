.class public Lorg/telegram/messenger/pip/utils/PipDuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private estimated:J

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pip_duration_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "estimated"

    const-wide/16 v2, 0x190

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated:J

    const-string v0, "count"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->count:I

    return-void
.end method


# virtual methods
.method public end()J
    .locals 11

    iget-wide v0, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->start:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->start:J

    sub-long/2addr v0, v4

    iget v4, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->count:I

    const/4 v5, 0x0

    const/16 v6, 0x9

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v4

    iget-wide v5, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated:J

    int-to-long v7, v4

    mul-long v5, v5, v7

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    rsub-int/lit8 v4, v4, 0xa

    int-to-long v9, v4

    mul-long v9, v9, v0

    div-long/2addr v9, v7

    add-long/2addr v5, v9

    iput-wide v5, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated:J

    iput-wide v2, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->start:J

    iget v2, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->count:I

    iget-object v2, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated:J

    const-string v5, "estimated"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->count:I

    const-string v4, "count"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-wide v0
.end method

.method public estimated()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated:J

    return-wide v0
.end method

.method public isStarted()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->start:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public progress()F
    .locals 5

    iget-wide v0, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->start:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public start()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/pip/utils/PipDuration;->start:J

    return-void
.end method
