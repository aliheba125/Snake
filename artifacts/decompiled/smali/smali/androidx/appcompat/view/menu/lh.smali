.class public abstract Landroidx/appcompat/view/menu/lh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh;Z)Landroidx/appcompat/view/menu/kh;
    .locals 3

    invoke-static {p0}, Landroidx/appcompat/view/menu/lh;->c(Landroidx/appcompat/view/menu/kh;)Z

    move-result v0

    invoke-static {p1}, Landroidx/appcompat/view/menu/lh;->c(Landroidx/appcompat/view/menu/kh;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/kh;->o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/bo0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bo0;-><init>()V

    iput-object p1, v0, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    sget-object p1, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    new-instance v2, Landroidx/appcompat/view/menu/lh$b;

    invoke-direct {v2, v0, p2}, Landroidx/appcompat/view/menu/lh$b;-><init>(Landroidx/appcompat/view/menu/bo0;Z)V

    invoke-interface {p0, p1, v2}, Landroidx/appcompat/view/menu/kh;->p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/kh;

    if-eqz v1, :cond_1

    iget-object p2, v0, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/view/menu/kh;

    sget-object v1, Landroidx/appcompat/view/menu/lh$a;->n:Landroidx/appcompat/view/menu/lh$a;

    invoke-interface {p2, p1, v1}, Landroidx/appcompat/view/menu/kh;->p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/kh;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/kh;->o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroidx/appcompat/view/menu/kh;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Landroidx/appcompat/view/menu/kh;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/appcompat/view/menu/lh$c;->n:Landroidx/appcompat/view/menu/lh$c;

    invoke-interface {p0, v0, v1}, Landroidx/appcompat/view/menu/kh;->p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Landroidx/appcompat/view/menu/th;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;
    .locals 1

    invoke-interface {p0}, Landroidx/appcompat/view/menu/th;->l()Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/appcompat/view/menu/lh;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh;Z)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/fm;->a()Landroidx/appcompat/view/menu/nh;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/ah;->b:Landroidx/appcompat/view/menu/ah$b;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/fm;->a()Landroidx/appcompat/view/menu/nh;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/kh;->o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final e(Landroidx/appcompat/view/menu/wh;)Landroidx/appcompat/view/menu/m31;
    .locals 0

    :cond_0
    invoke-interface {p0}, Landroidx/appcompat/view/menu/wh;->g()Landroidx/appcompat/view/menu/wh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final f(Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/kh;Ljava/lang/Object;)Landroidx/appcompat/view/menu/m31;
    .locals 1

    instance-of p2, p0, Landroidx/appcompat/view/menu/wh;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object p2, Landroidx/appcompat/view/menu/o31;->m:Landroidx/appcompat/view/menu/o31;

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p0, Landroidx/appcompat/view/menu/wh;

    invoke-static {p0}, Landroidx/appcompat/view/menu/lh;->e(Landroidx/appcompat/view/menu/wh;)Landroidx/appcompat/view/menu/m31;

    :cond_1
    return-object v0
.end method
