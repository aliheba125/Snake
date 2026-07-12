.class public Landroidx/appcompat/view/menu/w6;
.super Landroidx/appcompat/view/menu/l00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final l:Landroidx/appcompat/view/menu/w6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/w6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/w6;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/w6;->l:Landroidx/appcompat/view/menu/w6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l00$a;-><init>()V

    return-void
.end method

.method public static h()Landroidx/appcompat/view/menu/w6;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w6;->l:Landroidx/appcompat/view/menu/w6;

    return-object v0
.end method


# virtual methods
.method public P(Landroidx/appcompat/view/menu/y6;I)I
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/so0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/so0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/appcompat/view/menu/ci;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ci;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/tp;

    invoke-interface {v2, p1, v1, p2}, Landroidx/appcompat/view/menu/tp;->a(Landroidx/appcompat/view/menu/y6;Landroidx/appcompat/view/menu/j50;I)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b1(Landroidx/appcompat/view/menu/y6;ZI)I
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    new-instance p2, Landroidx/appcompat/view/menu/ro0;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/ro0;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p2, Landroidx/appcompat/view/menu/so0;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/so0;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/tp;

    invoke-interface {v1, p1, p2, p3}, Landroidx/appcompat/view/menu/tp;->a(Landroidx/appcompat/view/menu/y6;Landroidx/appcompat/view/menu/j50;I)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public j1(Landroidx/appcompat/view/menu/y6;)I
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/bi;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/bi;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/appcompat/view/menu/eh;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/eh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/tp;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v1, v3}, Landroidx/appcompat/view/menu/tp;->a(Landroidx/appcompat/view/menu/y6;Landroidx/appcompat/view/menu/j50;I)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public w(Landroidx/appcompat/view/menu/y6;I)I
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/ci;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ci;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/appcompat/view/menu/bi;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/bi;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/appcompat/view/menu/eh;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/eh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/tp;

    invoke-interface {v2, p1, v1, p2}, Landroidx/appcompat/view/menu/tp;->a(Landroidx/appcompat/view/menu/y6;Landroidx/appcompat/view/menu/j50;I)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
