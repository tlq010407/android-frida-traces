.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;


# instance fields
.field private final maxMemoryLimitInKb:I

.field private final tryToRecoverBrokenArchives:Z

.field private final useDefaultNameForUnnamedEntries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;-><init>(IZZ)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->maxMemoryLimitInKb:I

    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->useDefaultNameForUnnamedEntries:Z

    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->tryToRecoverBrokenArchives:Z

    return-void
.end method


# virtual methods
.method public getMaxMemoryLimitInKb()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->maxMemoryLimitInKb:I

    return v0
.end method

.method public getTryToRecoverBrokenArchives()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->tryToRecoverBrokenArchives:Z

    return v0
.end method

.method public getUseDefaultNameForUnnamedEntries()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->useDefaultNameForUnnamedEntries:Z

    return v0
.end method
