.class public abstract Landroidx/appcompat/view/menu/vs0;
.super Landroidx/appcompat/view/menu/us0;
.source "SourceFile"


# direct methods
.method public static final c(Landroidx/appcompat/view/menu/ps0;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/appcompat/view/menu/ps0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static d(Landroidx/appcompat/view/menu/ps0;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/appcompat/view/menu/vs0;->e(Landroidx/appcompat/view/menu/ps0;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/qc;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroidx/appcompat/view/menu/ps0;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/vs0;->c(Landroidx/appcompat/view/menu/ps0;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
