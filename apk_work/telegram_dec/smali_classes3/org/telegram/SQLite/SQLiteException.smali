.class public Lorg/telegram/SQLite/SQLiteException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x214877c28f7f0305L


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/SQLite/SQLiteException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/telegram/SQLite/SQLiteException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/telegram/SQLite/SQLiteException;-><init>(ILjava/lang/String;)V

    return-void
.end method
