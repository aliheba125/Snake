.class public final Landroidx/appcompat/view/menu/lo0;
.super Landroidx/appcompat/view/menu/q40;
.source "SourceFile"


# static fields
.field public static final r:Landroidx/appcompat/view/menu/lo0;


# instance fields
.field public final transient q:Landroidx/appcompat/view/menu/l40;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/lo0;

    invoke-static {}, Landroidx/appcompat/view/menu/l40;->u()Landroidx/appcompat/view/menu/l40;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/vg0;->c()Landroidx/appcompat/view/menu/vg0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/lo0;-><init>(Landroidx/appcompat/view/menu/l40;Ljava/util/Comparator;)V

    sput-object v0, Landroidx/appcompat/view/menu/lo0;->r:Landroidx/appcompat/view/menu/lo0;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/l40;Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/q40;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    return-void
.end method


# virtual methods
.method public C()Landroidx/appcompat/view/menu/q40;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q40;->E(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/lo0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/lo0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/l40;->y()Landroidx/appcompat/view/menu/l40;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/menu/lo0;-><init>(Landroidx/appcompat/view/menu/l40;Ljava/util/Comparator;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public H(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/lo0;->S(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/lo0;->R(II)Landroidx/appcompat/view/menu/lo0;

    move-result-object p1

    return-object p1
.end method

.method public K(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/lo0;->N(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroidx/appcompat/view/menu/q40;->H(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;

    move-result-object p1

    return-object p1
.end method

.method public N(Ljava/lang/Object;Z)Landroidx/appcompat/view/menu/q40;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/lo0;->U(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/lo0;->R(II)Landroidx/appcompat/view/menu/lo0;

    move-result-object p1

    return-object p1
.end method

.method public Q()Landroidx/appcompat/view/menu/t31;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l40;->y()Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l40;->r()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public R(II)Landroidx/appcompat/view/menu/lo0;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/lo0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/view/menu/l40;->A(II)Landroidx/appcompat/view/menu/l40;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/view/menu/lo0;-><init>(Landroidx/appcompat/view/menu/l40;Ljava/util/Comparator;)V

    return-object v0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    invoke-static {p1}, Landroidx/appcompat/view/menu/q40;->E(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/lo0;

    move-result-object p1

    return-object p1
.end method

.method public S(Ljava/lang/Object;Z)I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-static {p1}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q40;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1

    :cond_1
    not-int p1, p1

    return p1
.end method

.method public T()Landroidx/appcompat/view/menu/t31;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l40;->r()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public U(Ljava/lang/Object;Z)I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-static {p1}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q40;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1

    :cond_1
    not-int p1, p1

    return p1
.end method

.method public final V(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->W()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public W()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    return-object v0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/lo0;->U(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lo0;->V(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    nop

    :catch_0
    :cond_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6

    instance-of v0, p1, Landroidx/appcompat/view/menu/he0;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/he0;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/he0;->l()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q40;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/bw0;->b(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->T()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p0, v4, v2}, Landroidx/appcompat/view/menu/q40;->O(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    return v3

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_5
    if-nez v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_7
    if-lez v5, :cond_3

    :catch_0
    return v3

    :cond_8
    :goto_1
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public d([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/l40;->d([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->Q()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/q40;->o:Ljava/util/Comparator;

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/bw0;->b(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->T()Landroidx/appcompat/view/menu/t31;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/view/menu/q40;->O(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :cond_5
    return v2

    :cond_6
    return v0

    :catch_0
    return v2

    :cond_7
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lo0;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public f()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k40;->f()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/lo0;->S(Ljava/lang/Object;Z)I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k40;->g()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k40;->h()I

    move-result v0

    return v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/lo0;->U(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k40;->i()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->T()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lo0;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/lo0;->S(Ljava/lang/Object;Z)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lo0;->q:Landroidx/appcompat/view/menu/l40;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
