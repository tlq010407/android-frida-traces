.class public interface abstract Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Painting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaintingDelegate"
.end annotation


# virtual methods
.method public abstract contentChanged()V
.end method

.method public abstract requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;
.end method

.method public abstract requestUndoStore()Lorg/telegram/ui/Components/Paint/UndoStore;
.end method
