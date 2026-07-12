.class public abstract Landroidx/appcompat/view/menu/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/xg;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/xg;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object p0

    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {v0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Landroidx/appcompat/view/menu/cm;->c(Landroidx/appcompat/view/menu/xg;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/ba;->a(Landroidx/appcompat/view/menu/xg;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/fw;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/a60;->a(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object p0

    sget-object p1, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroidx/appcompat/view/menu/cm;->b(Landroidx/appcompat/view/menu/xg;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Landroidx/appcompat/view/menu/ba;->a(Landroidx/appcompat/view/menu/xg;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ba;->c(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/fw;)V

    return-void
.end method
