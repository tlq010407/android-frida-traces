.class public final Landroidx/core/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;

.field private mChoices:[Ljava/lang/CharSequence;

.field private mEditChoicesBeforeSending:I

.field private final mExtras:Landroid/os/Bundle;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Result key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroidx/core/app/RemoteInput;
    .locals 9

    new-instance v8, Landroidx/core/app/RemoteInput;

    iget-object v1, p0, Landroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    iget v5, p0, Landroidx/core/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    iget-object v6, p0, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v7, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    return-object v8
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
