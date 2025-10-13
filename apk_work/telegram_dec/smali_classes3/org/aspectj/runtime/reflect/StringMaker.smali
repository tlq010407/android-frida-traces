.class Lorg/aspectj/runtime/reflect/StringMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

.field static middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

.field static shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;


# instance fields
.field cacheOffset:I

.field includeArgs:Z

.field includeEnclosingPoint:Z

.field includeJoinPointTypeName:Z

.field includeModifiers:Z

.field includeThrows:Z

.field shortKindName:Z

.field shortPrimaryTypeNames:Z

.field shortTypeNames:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-direct {v0}, Lorg/aspectj/runtime/reflect/StringMaker;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeJoinPointTypeName:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeEnclosingPoint:Z

    iput v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    new-instance v0, Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-direct {v0}, Lorg/aspectj/runtime/reflect/StringMaker;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    new-instance v0, Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-direct {v0}, Lorg/aspectj/runtime/reflect/StringMaker;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortKindName:Z

    const/4 v1, 0x2

    iput v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    iput-boolean v1, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    iput-boolean v1, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeJoinPointTypeName:Z

    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeEnclosingPoint:Z

    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortKindName:Z

    return-void
.end method


# virtual methods
.method public addSignature(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    if-nez v0, :cond_2

    array-length p2, p2

    if-nez p2, :cond_1

    const-string p2, "()"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const-string p2, "(..)"

    goto :goto_0

    :cond_2
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/aspectj/runtime/reflect/StringMaker;->addTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    const-string p2, ")"

    goto :goto_0
.end method

.method public addThrows(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 1

    iget-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " throws "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/aspectj/runtime/reflect/StringMaker;->addTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method makeKindName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method makeModifiersString(I)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public makePrimaryTypeName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public makeTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    invoke-virtual {p0, p1, v0, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method makeTypeName(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 0
    if-nez p1, :cond_0

    const-string p1, "ANONYMOUS"

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "[]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x2e

    const/16 v0, 0x24

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lorg/aspectj/runtime/reflect/StringMaker;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
