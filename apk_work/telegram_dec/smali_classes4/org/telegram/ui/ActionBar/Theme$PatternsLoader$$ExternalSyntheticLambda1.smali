.class public final synthetic Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->$r8$lambda$_NpolgguTd1FDmV4WkYzlskMexw(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;)V

    return-void
.end method
