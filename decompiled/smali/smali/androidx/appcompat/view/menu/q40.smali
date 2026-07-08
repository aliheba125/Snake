.class public abstract Landroidx/appcompat/view/menu/q40;
.super Landroidx/appcompat/view/menu/r40;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Landroidx/appcompat/view/menu/aw0;


# instance fields
.field public final transient o:Ljava/util/Comparator;

.field public transient p:Landroidx/appcompat/view/menu/q40;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r40;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    return-void
.end method

.method public static A(Ljava/util/Comparator;Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/q40;
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/bw0;->b(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/appcompat/view/menu/q40;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/q40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k40;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/i60;->b(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object p1

    array-length v0, p1

    invoke-static {p0, v0, p1}, Landroidx/appcompat/view/menu/q40;->z(Ljava/util/Comparator;I[Ljava/lang/Object;)Landroidx/appcompat/view/menu/q40;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/util/Comparator;Ljava/util/Collection;)Landroidx/appcompat/view/menu/q40;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/q40;->A(Ljava/util/Comparator;Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/q40;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/lo0;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/vg0;->c()Landroidx/appcompat/view/menu/vg0;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/appcompat/view/menu/lo0;->r:Landroidx/appcompat/view/menu/lo0;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/lo0;

    invoke-static {}, Landroidx/appcompat/view/menu/l40;->u()Landroidx/appcompat/view/menu/l40;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/lo0;-><init>(Landroidx/appcompat/view/menu/l40;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static P(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static varargs z(Ljava/util/Comparator;I[Ljava/lang/Object;)Landroidx/appcompat/view/menu/q40;
    .locals 4

    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/q40;->E(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/lo0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/sf0;->c([Ljava/lang/Object;I)[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v2, p2, v0

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p2, v3

    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    aput-object v2, p2, v1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    array-length p1, p2

    div-int/lit8 p1, p1, 0x2

    if-ge v1, p1, :cond_3

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    :cond_3
    new-instance p1, Landroidx/appcompat/view/menu/lo0;

    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/l40;->n([Ljava/lang/Object;I)Landroidx/appcompat/view/menu/l40;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroidx/appcompat/view/menu/lo0;-><init>(Landroidx/appcompat/view/menu/l40;Ljava/util/Comparator;)V

    return-object p1
.end method


# virtual methods
.method public abstract C()Landroidx/appcompat/view/menu/q40;
.end method

.method public D()Landroidx/appcompat/view/menu/q40;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q40;->p:Landroidx/appcompat/view/menu/q40;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q40;->C()Landroidx/appcompat/view/menu/q40;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q40;->p:Landroidx/appcompat/view/menu/q40;

    iput-object p0, v0, Landroidx/appcompat/view/menu/q40;->p:Landroidx/appcompat/view/menu/q40;

    :cond_0
    return-object v0
.end method

.method public F(Ljava/lang/Object;)Landroidx/appcompat/view/menu/q40;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/q40;->G(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/q40;->H(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public abstract H(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
.end method

.method public I(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/appcompat/view/menu/q40;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/appcompat/view/menu/q40;->J(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public J(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/appcompat/view/menu/nj0;->d(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/q40;->K(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public abstract K(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
.end method

.method public L(Ljava/lang/Object;)Landroidx/appcompat/view/menu/q40;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/q40;->M(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public M(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/q40;->N(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public abstract N(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
.end method

.method public O(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/q40;->P(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q40;->D()Landroidx/appcompat/view/menu/q40;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/q40;->G(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q40;->F(Ljava/lang/Object;)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/q40;->J(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/q40;->I(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/q40;->M(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q40;->L(Ljava/lang/Object;)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method
