.class abstract Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;
.super Lio/reactivex/rxjava3/core/Observable;
.source "SourceFile"


# instance fields
.field protected final source:Lio/reactivex/rxjava3/core/ObservableSource;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    return-void
.end method
