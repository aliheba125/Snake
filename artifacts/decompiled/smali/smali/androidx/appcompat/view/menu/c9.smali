.class public abstract synthetic Landroidx/appcompat/view/menu/c9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;)Landroidx/appcompat/view/menu/ok;
    .locals 1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/lh;->d(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/xh;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/k80;

    invoke-direct {p1, p0, p3}, Landroidx/appcompat/view/menu/k80;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/tw;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/rk;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/view/menu/rk;-><init>(Landroidx/appcompat/view/menu/kh;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Landroidx/appcompat/view/menu/g;->K0(Landroidx/appcompat/view/menu/xh;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)V

    return-object p1
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ok;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Landroidx/appcompat/view/menu/xh;->m:Landroidx/appcompat/view/menu/xh;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b9;->a(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;)Landroidx/appcompat/view/menu/ok;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;)Landroidx/appcompat/view/menu/q60;
    .locals 1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/lh;->d(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/xh;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/p80;

    invoke-direct {p1, p0, p3}, Landroidx/appcompat/view/menu/p80;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/tw;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/nw0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/view/menu/nw0;-><init>(Landroidx/appcompat/view/menu/kh;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Landroidx/appcompat/view/menu/g;->K0(Landroidx/appcompat/view/menu/xh;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)V

    return-object p1
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/q60;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Landroidx/appcompat/view/menu/xh;->m:Landroidx/appcompat/view/menu/xh;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b9;->c(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/xh;Landroidx/appcompat/view/menu/tw;)Landroidx/appcompat/view/menu/q60;

    move-result-object p0

    return-object p0
.end method
