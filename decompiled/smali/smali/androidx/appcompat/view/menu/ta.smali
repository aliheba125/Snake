.class public abstract Landroidx/appcompat/view/menu/ta;
.super Landroidx/appcompat/view/menu/g;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/sa;


# instance fields
.field public final p:Landroidx/appcompat/view/menu/sa;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/sa;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/kh;ZZ)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ls0;->A()Z

    move-result v0

    return v0
.end method

.method public L(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/appcompat/view/menu/b70;->A0(Landroidx/appcompat/view/menu/b70;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/vn0;->e(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->J(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final L0()Landroidx/appcompat/view/menu/sa;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    return-object v0
.end method

.method public final e(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroidx/appcompat/view/menu/r60;

    invoke-static {p0}, Landroidx/appcompat/view/menu/b70;->E(Landroidx/appcompat/view/menu/b70;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Landroidx/appcompat/view/menu/r60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroidx/appcompat/view/menu/q60;)V

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ta;->L(Ljava/lang/Throwable;)V

    return-void
.end method

.method public iterator()Landroidx/appcompat/view/menu/za;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/vn0;->iterator()Landroidx/appcompat/view/menu/za;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/ls0;->k(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public q(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/ls0;->q(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v(Landroidx/appcompat/view/menu/fw;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/ls0;->v(Landroidx/appcompat/view/menu/fw;)V

    return-void
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ta;->p:Landroidx/appcompat/view/menu/sa;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/ls0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
