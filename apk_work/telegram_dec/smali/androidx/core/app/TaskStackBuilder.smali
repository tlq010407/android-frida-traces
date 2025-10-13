.class public final Landroidx/core/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/TaskStackBuilder$Api16Impl;
    }
.end annotation


# instance fields
.field private final mIntents:Ljava/util/ArrayList;

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;
    .locals 1

    new-instance v0, Landroidx/core/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;
    .locals 2

    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-object p0

    :goto_1
    const-string v0, "TaskStackBuilder"

    const-string v1, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2, p3}, Landroidx/core/app/TaskStackBuilder$Api16Impl;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
