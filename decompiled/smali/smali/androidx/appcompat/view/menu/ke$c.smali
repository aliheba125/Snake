.class public final Landroidx/appcompat/view/menu/ke$c;
.super Landroidx/appcompat/view/menu/u50;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final g:Landroid/util/ArrayMap;

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/u50;-><init>()V

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ke$c;->g:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/me;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ke$c;-><init>()V

    return-void
.end method

.method public static bridge synthetic r(Landroidx/appcompat/view/menu/ke$c;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ke$c;->g:Landroid/util/ArrayMap;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)Z
    .locals 0

    check-cast p2, Landroidx/appcompat/view/menu/u6$l;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ke$c;->t(Ljava/lang/String;Landroidx/appcompat/view/menu/u6$l;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(I)[Landroidx/appcompat/view/menu/u6$f;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ke$c;->u(I)[Landroidx/appcompat/view/menu/u6$l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Landroidx/appcompat/view/menu/u6$f;II)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/u6$l;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ke$c;->v(Landroidx/appcompat/view/menu/u6$l;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroidx/appcompat/view/menu/u6$k;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke$c;->g:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/u6$d;->a()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/u6$l;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/u50;->b(Landroidx/appcompat/view/menu/u6$f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Ljava/lang/String;Landroidx/appcompat/view/menu/u6$l;)Z
    .locals 0

    iget-object p2, p2, Landroidx/appcompat/view/menu/u6$l;->t:Landroidx/appcompat/view/menu/u6$k;

    iget-object p2, p2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object p2, p2, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public u(I)[Landroidx/appcompat/view/menu/u6$l;
    .locals 0

    new-array p1, p1, [Landroidx/appcompat/view/menu/u6$l;

    return-object p1
.end method

.method public v(Landroidx/appcompat/view/menu/u6$l;II)Landroid/content/pm/ResolveInfo;
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$l;->t:Landroidx/appcompat/view/menu/u6$k;

    iget-object v1, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6;->x:Landroidx/appcompat/view/menu/y6;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v2, p0, Landroidx/appcompat/view/menu/ke$c;->h:I

    invoke-virtual {v1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Landroidx/appcompat/view/menu/zg0;->j(Landroidx/appcompat/view/menu/u6$k;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget p3, p0, Landroidx/appcompat/view/menu/ke$c;->h:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_1

    iget-object p3, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    :cond_1
    iget-object p3, p1, Landroidx/appcompat/view/menu/u6$f;->m:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget-object p3, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget p3, p3, Landroidx/appcompat/view/menu/u6;->z:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    iget-boolean p2, p1, Landroidx/appcompat/view/menu/u6$f;->n:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget p2, p1, Landroidx/appcompat/view/menu/u6$f;->o:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    iget-object p2, p1, Landroidx/appcompat/view/menu/u6$f;->p:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget p1, p1, Landroidx/appcompat/view/menu/u6$f;->q:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method public w(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1

    iput p3, p0, Landroidx/appcompat/view/menu/ke$c;->h:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/u50;->i(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iput p3, p0, Landroidx/appcompat/view/menu/ke$c;->h:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    move v4, p3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/u6$k;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/appcompat/view/menu/u6$l;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-super/range {v1 .. v6}, Landroidx/appcompat/view/menu/u50;->j(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public y(Landroidx/appcompat/view/menu/u6$k;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke$c;->g:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/u6$d;->a()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Landroidx/appcompat/view/menu/u6$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/u6$l;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/u50;->m(Landroidx/appcompat/view/menu/u6$f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
