.class public abstract Landroidx/appcompat/view/menu/bg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Landroidx/appcompat/view/menu/dw;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/bg0;->a:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/bg0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c(Landroidx/appcompat/view/menu/h7;)V
.end method

.method public abstract d(Landroidx/appcompat/view/menu/h7;)V
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/bg0;->a:Z

    return v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bg0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/w9;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/w9;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/bg0;->a:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/bg0;->c:Landroidx/appcompat/view/menu/dw;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    :cond_0
    return-void
.end method
