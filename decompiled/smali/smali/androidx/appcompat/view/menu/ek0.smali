.class public abstract Landroidx/appcompat/view/menu/ek0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/gk0;Landroidx/appcompat/view/menu/dw;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Landroidx/appcompat/view/menu/ek0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/view/menu/ek0$a;

    iget v1, v0, Landroidx/appcompat/view/menu/ek0$a;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/view/menu/ek0$a;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ek0$a;

    invoke-direct {v0, p2}, Landroidx/appcompat/view/menu/ek0$a;-><init>(Landroidx/appcompat/view/menu/xg;)V

    :goto_0
    iget-object p2, v0, Landroidx/appcompat/view/menu/ek0$a;->r:Ljava/lang/Object;

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/appcompat/view/menu/ek0$a;->s:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/appcompat/view/menu/ek0$a;->q:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/appcompat/view/menu/dw;

    iget-object p0, v0, Landroidx/appcompat/view/menu/ek0$a;->p:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/gk0;

    :try_start_0
    invoke-static {p2}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p2

    sget-object v2, Landroidx/appcompat/view/menu/q60;->d:Landroidx/appcompat/view/menu/q60$b;

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object p2

    if-ne p2, p0, :cond_5

    :try_start_1
    iput-object p0, v0, Landroidx/appcompat/view/menu/ek0$a;->p:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/appcompat/view/menu/ek0$a;->q:Ljava/lang/Object;

    iput v3, v0, Landroidx/appcompat/view/menu/ek0$a;->s:I

    new-instance p2, Landroidx/appcompat/view/menu/y9;

    invoke-static {v0}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/y9;->z()V

    new-instance v2, Landroidx/appcompat/view/menu/ek0$b;

    invoke-direct {v2, p2}, Landroidx/appcompat/view/menu/ek0$b;-><init>(Landroidx/appcompat/view/menu/x9;)V

    invoke-interface {p0, v2}, Landroidx/appcompat/view/menu/ls0;->v(Landroidx/appcompat/view/menu/fw;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_3

    invoke-static {v0}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    invoke-interface {p1}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    sget-object p0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p0

    :goto_2
    invoke-interface {p1}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/tw;)Landroidx/appcompat/view/menu/vn0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p3, v0, v1, v0}, Landroidx/appcompat/view/menu/ab;->b(ILandroidx/appcompat/view/menu/u8;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/sa;

    move-result-object p2

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/lh;->d(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    new-instance p1, Landroidx/appcompat/view/menu/fk0;

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/view/menu/fk0;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/sa;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Landroidx/appcompat/view/menu/b70;->h(Landroidx/appcompat/view/menu/fw;)Landroidx/appcompat/view/menu/mm;

    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Landroidx/appcompat/view/menu/g;->K0(Landroidx/appcompat/view/menu/xh;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)V

    return-object p1
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/vn0;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Landroidx/appcompat/view/menu/u8;->m:Landroidx/appcompat/view/menu/u8;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    sget-object p4, Landroidx/appcompat/view/menu/xh;->m:Landroidx/appcompat/view/menu/xh;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/appcompat/view/menu/ek0;->b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/tw;)Landroidx/appcompat/view/menu/vn0;

    move-result-object p0

    return-object p0
.end method
