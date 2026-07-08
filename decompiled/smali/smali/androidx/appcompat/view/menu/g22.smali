.class public final Landroidx/appcompat/view/menu/g22;
.super Landroidx/appcompat/view/menu/i22;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/g22;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/i22;-><init>(Landroidx/appcompat/view/menu/o22;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/m22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/g22;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Object;JI)Ljava/util/List;
    .locals 3

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/g22;->f(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroidx/appcompat/view/menu/c22;

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/e22;

    invoke-direct {v0, p3}, Landroidx/appcompat/view/menu/e22;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroidx/appcompat/view/menu/r42;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroidx/appcompat/view/menu/n12;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0, p3}, Landroidx/appcompat/view/menu/n12;->e(I)Landroidx/appcompat/view/menu/n12;

    move-result-object p3

    move-object v0, p3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/w72;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v1, Landroidx/appcompat/view/menu/g22;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1, p2, v1}, Landroidx/appcompat/view/menu/w72;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Landroidx/appcompat/view/menu/n72;

    if-eqz v1, :cond_4

    new-instance v1, Landroidx/appcompat/view/menu/e22;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/e22;-><init>(I)V

    check-cast v0, Landroidx/appcompat/view/menu/n72;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/fx1;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1, p2, v1}, Landroidx/appcompat/view/menu/w72;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroidx/appcompat/view/menu/r42;

    if-eqz v1, :cond_5

    instance-of v1, v0, Landroidx/appcompat/view/menu/n12;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/n12;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/n12;->e(I)Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/w72;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static f(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/w72;->B(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p2, p3, p4}, Landroidx/appcompat/view/menu/g22;->f(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Landroidx/appcompat/view/menu/g22;->e(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v1, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p1, p3, p4, p2}, Landroidx/appcompat/view/menu/w72;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p2, p3}, Landroidx/appcompat/view/menu/w72;->B(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Landroidx/appcompat/view/menu/c22;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/c22;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/c22;->m()Landroidx/appcompat/view/menu/c22;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/appcompat/view/menu/g22;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/view/menu/r42;

    if-eqz v1, :cond_3

    instance-of v1, v0, Landroidx/appcompat/view/menu/n12;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->o()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/w72;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
