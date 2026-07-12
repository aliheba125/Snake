.class public abstract Landroidx/appcompat/view/menu/ht0;
.super Landroidx/appcompat/view/menu/gt0;
.source "SourceFile"


# direct methods
.method public static b()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ho;->m:Landroidx/appcompat/view/menu/ho;

    return-object v0
.end method

.method public static final c(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/gt0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/ft0;->b()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method
