.class public Lcom/googlecode/mp4parser/RequiresParseDetailAspect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/googlecode/mp4parser/RequiresParseDetailAspect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->ajc$postClinit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-object v0, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .locals 1

    new-instance v0, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->ajc$perSingletonInstance:Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    return-void
.end method

.method public static aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;
    .locals 3

    sget-object v0, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->ajc$perSingletonInstance:Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com.googlecode.mp4parser.RequiresParseDetailAspect"

    sget-object v2, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public before(Lorg/aspectj/lang/JoinPoint;)V
    .locals 2

    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/googlecode/mp4parser/AbstractBox;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/AbstractBox;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/AbstractBox;->isParsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/googlecode/mp4parser/AbstractBox;

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/AbstractBox;->parseDetails()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only methods in subclasses of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/googlecode/mp4parser/AbstractBox;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can  be annotated with ParseDetail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
