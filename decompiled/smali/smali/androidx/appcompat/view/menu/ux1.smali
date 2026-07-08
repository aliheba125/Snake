.class public final Landroidx/appcompat/view/menu/ux1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Landroidx/appcompat/view/menu/qx1;

    check-cast p2, Landroidx/appcompat/view/menu/qx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qx1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cy1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/qx1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/cy1;

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cy1;->a()B

    move-result v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/qx1;->g(B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cy1;->a()B

    move-result v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/qx1;->g(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qx1;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/qx1;->t()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
