.class public Landroidx/appcompat/view/menu/xq;
.super Landroidx/appcompat/view/menu/gr0;
.source "SourceFile"


# instance fields
.field public final q:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gr0;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/xq;->q:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/xq;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)Landroidx/appcompat/view/menu/gr0$c;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/xq;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/gr0$c;

    return-object p1
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/xq;->f(Ljava/lang/Object;)Landroidx/appcompat/view/menu/gr0$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroidx/appcompat/view/menu/gr0$c;->n:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/xq;->q:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/gr0;->i(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/appcompat/view/menu/gr0$c;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/gr0;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/xq;->q:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public p(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/xq;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/xq;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/gr0$c;

    iget-object p1, p1, Landroidx/appcompat/view/menu/gr0$c;->p:Landroidx/appcompat/view/menu/gr0$c;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
