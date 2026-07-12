.class public abstract Landroidx/appcompat/view/menu/n31;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)V
    .locals 3

    invoke-static {p2}, Landroidx/appcompat/view/menu/gj;->a(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/i01;->c(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    :try_start_1
    invoke-static {p0, v2}, Landroidx/appcompat/view/menu/q21;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/tw;

    invoke-interface {p0, p1, v0}, Landroidx/appcompat/view/menu/tw;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/i01;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/i01;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    sget-object p1, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    invoke-static {p0}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public static final b(Landroidx/appcompat/view/menu/is0;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/q21;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/tw;

    invoke-interface {p2, p1, p0}, Landroidx/appcompat/view/menu/tw;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Landroidx/appcompat/view/menu/nd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Landroidx/appcompat/view/menu/nd;-><init>(Ljava/lang/Throwable;ZILandroidx/appcompat/view/menu/lj;)V

    move-object p1, p2

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->k0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/appcompat/view/menu/c70;->b:Landroidx/appcompat/view/menu/my0;

    if-ne p0, p1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of p1, p0, Landroidx/appcompat/view/menu/nd;

    if-nez p1, :cond_2

    invoke-static {p0}, Landroidx/appcompat/view/menu/c70;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    check-cast p0, Landroidx/appcompat/view/menu/nd;

    iget-object p0, p0, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    throw p0
.end method
