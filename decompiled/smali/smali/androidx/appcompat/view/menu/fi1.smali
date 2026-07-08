.class public final Landroidx/appcompat/view/menu/fi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;

.field public b:Landroidx/appcompat/view/menu/jj1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/fi1;->a:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/view/menu/jj1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/jj1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/fi1;->b:Landroidx/appcompat/view/menu/jj1;

    new-instance v0, Landroidx/appcompat/view/menu/ch1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ch1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fi1;->b(Landroidx/appcompat/view/menu/gh1;)V

    new-instance v0, Landroidx/appcompat/view/menu/di1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/di1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fi1;->b(Landroidx/appcompat/view/menu/gh1;)V

    new-instance v0, Landroidx/appcompat/view/menu/hi1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/hi1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fi1;->b(Landroidx/appcompat/view/menu/gh1;)V

    new-instance v0, Landroidx/appcompat/view/menu/pi1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pi1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fi1;->b(Landroidx/appcompat/view/menu/gh1;)V

    new-instance v0, Landroidx/appcompat/view/menu/ti1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ti1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fi1;->b(Landroidx/appcompat/view/menu/gh1;)V

    new-instance v0, Landroidx/appcompat/view/menu/fj1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/fj1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fi1;->b(Landroidx/appcompat/view/menu/gh1;)V

    new-instance v0, Landroidx/appcompat/view/menu/pj1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pj1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fi1;->b(Landroidx/appcompat/view/menu/gh1;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pw1;Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/view/menu/iu1;->b(Landroidx/appcompat/view/menu/pw1;)I

    instance-of v0, p2, Landroidx/appcompat/view/menu/wg1;

    if-eqz v0, :cond_1

    check-cast p2, Landroidx/appcompat/view/menu/wg1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/wg1;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/wg1;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/fi1;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/fi1;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gh1;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/fi1;->b:Landroidx/appcompat/view/menu/jj1;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroidx/appcompat/view/menu/gh1;->b(Ljava/lang/String;Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final b(Landroidx/appcompat/view/menu/gh1;)V
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/tj1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/tj1;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/fi1;->a:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
