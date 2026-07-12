.class public final Landroidx/appcompat/view/menu/o9$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j90;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/o9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final m:Ljava/lang/ref/WeakReference;

.field public final n:Landroidx/appcompat/view/menu/p;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o9$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/o9$d$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/o9$d$a;-><init>(Landroidx/appcompat/view/menu/o9$d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->s(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/p;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/o9$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/p;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o9$a;->a()V

    :cond_0
    return p1
.end method

.method public d(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->t(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    .line 1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/p;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->isDone()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o9$d;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
