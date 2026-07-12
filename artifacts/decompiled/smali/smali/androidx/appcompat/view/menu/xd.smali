.class public interface abstract Landroidx/appcompat/view/menu/xd;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ul0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xd;->e(Landroidx/appcompat/view/menu/ul0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;
.end method

.method public c(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ul0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xd;->f(Landroidx/appcompat/view/menu/ul0;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Class;)Landroidx/appcompat/view/menu/el0;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ul0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xd;->b(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroidx/appcompat/view/menu/ul0;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xd;->b(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/appcompat/view/menu/ul0;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xd;->g(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public abstract g(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;
.end method
