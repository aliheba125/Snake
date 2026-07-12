.class public Landroidx/appcompat/view/menu/gv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/mv;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    iget-object p2, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    invoke-direct {p1, p3, p4, p2}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/appcompat/view/menu/mv;)V

    return-object p1

    :cond_0
    const-string v0, "fragment"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    .line 5
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v1, Landroidx/appcompat/view/menu/jn0;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez p2, :cond_2

    .line 7
    sget p2, Landroidx/appcompat/view/menu/jn0;->b:I

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_2
    sget v2, Landroidx/appcompat/view/menu/jn0;->c:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 9
    sget v4, Landroidx/appcompat/view/menu/jn0;->d:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_d

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/appcompat/view/menu/ev;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v3, :cond_6

    if-ne v2, v3, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eq v2, v3, :cond_7

    iget-object v1, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    .line 14
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/mv;->X(I)Landroidx/appcompat/view/menu/av;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_8

    if-eqz v4, :cond_8

    iget-object v1, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    .line 15
    invoke-virtual {v1, v4}, Landroidx/appcompat/view/menu/mv;->Y(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object v1

    :cond_8
    if-nez v1, :cond_9

    if-eq p1, v3, :cond_9

    iget-object v1, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    .line 16
    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/mv;->X(I)Landroidx/appcompat/view/menu/av;

    move-result-object v1

    :cond_9
    const/4 v3, 0x1

    if-nez v1, :cond_b

    iget-object p4, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    .line 17
    invoke-virtual {p4}, Landroidx/appcompat/view/menu/mv;->i0()Landroidx/appcompat/view/menu/ev;

    move-result-object p4

    .line 18
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 19
    invoke-virtual {p4, p3, p2}, Landroidx/appcompat/view/menu/ev;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object p2

    .line 20
    iput-boolean v3, p2, Landroidx/appcompat/view/menu/av;->o:Z

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    move v2, p1

    .line 21
    :goto_3
    iput v2, p2, Landroidx/appcompat/view/menu/av;->w:I

    .line 22
    iput p1, p2, Landroidx/appcompat/view/menu/av;->x:I

    .line 23
    iput-object v4, p2, Landroidx/appcompat/view/menu/av;->y:Ljava/lang/String;

    .line 24
    iput-boolean v3, p2, Landroidx/appcompat/view/menu/av;->p:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    .line 25
    iput-object p1, p2, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    .line 26
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->j0()Landroidx/appcompat/view/menu/fv;

    iget-object p1, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->j0()Landroidx/appcompat/view/menu/fv;

    throw v0

    .line 28
    :cond_b
    iget-boolean p3, v1, Landroidx/appcompat/view/menu/av;->p:Z

    if-eqz p3, :cond_c

    .line 29
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with another fragment for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 32
    :cond_c
    iput-boolean v3, v1, Landroidx/appcompat/view/menu/av;->p:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    .line 33
    iput-object p1, v1, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->j0()Landroidx/appcompat/view/menu/fv;

    iget-object p1, p0, Landroidx/appcompat/view/menu/gv;->a:Landroidx/appcompat/view/menu/mv;

    .line 35
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->j0()Landroidx/appcompat/view/menu/fv;

    throw v0

    :cond_d
    :goto_4
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/view/menu/gv;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
