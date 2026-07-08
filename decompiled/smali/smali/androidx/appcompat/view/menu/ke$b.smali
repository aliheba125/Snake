.class public final Landroidx/appcompat/view/menu/ke$b;
.super Landroidx/appcompat/view/menu/u50;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

    iput-object v0, p0, Landroidx/appcompat/view/menu/ke$b;->g:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/le;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ke$b;-><init>()V

    return-void
.end method

.method public static bridge synthetic r(Landroidx/appcompat/view/menu/ke$b;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ke$b;->g:Landroid/util/ArrayMap;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/appcompat/view/menu/u6$f;Ljava/util/List;)Z
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/u6$j;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ke$b;->t(Landroidx/appcompat/view/menu/u6$j;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f(Ljava/lang/String;Landroidx/appcompat/view/menu/u6$f;)Z
    .locals 0

    check-cast p2, Landroidx/appcompat/view/menu/u6$j;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ke$b;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/u6$j;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(I)[Landroidx/appcompat/view/menu/u6$f;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ke$b;->v(I)[Landroidx/appcompat/view/menu/u6$j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Landroidx/appcompat/view/menu/u6$f;II)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/u6$j;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ke$b;->w(Landroidx/appcompat/view/menu/u6$j;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroidx/appcompat/view/menu/u6$i;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke$b;->g:Landroid/util/ArrayMap;

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

    check-cast v2, Landroidx/appcompat/view/menu/u6$j;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/u50;->b(Landroidx/appcompat/view/menu/u6$f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Landroidx/appcompat/view/menu/u6$j;Ljava/util/List;)Z
    .locals 5

    iget-object p1, p1, Landroidx/appcompat/view/menu/u6$j;->t:Landroidx/appcompat/view/menu/u6$i;

    iget-object p1, p1, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public u(Ljava/lang/String;Landroidx/appcompat/view/menu/u6$j;)Z
    .locals 0

    iget-object p2, p2, Landroidx/appcompat/view/menu/u6$j;->t:Landroidx/appcompat/view/menu/u6$i;

    iget-object p2, p2, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object p2, p2, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public v(I)[Landroidx/appcompat/view/menu/u6$j;
    .locals 0

    new-array p1, p1, [Landroidx/appcompat/view/menu/u6$j;

    return-object p1
.end method

.method public w(Landroidx/appcompat/view/menu/u6$j;II)Landroid/content/pm/ResolveInfo;
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6$j;->t:Landroidx/appcompat/view/menu/u6$i;

    iget-object v1, v0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6;->x:Landroidx/appcompat/view/menu/y6;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v2, p0, Landroidx/appcompat/view/menu/ke$b;->h:I

    invoke-virtual {v1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Landroidx/appcompat/view/menu/zg0;->i(Landroidx/appcompat/view/menu/u6$i;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ProviderInfo;

    move-result-object p3

    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget p3, p0, Landroidx/appcompat/view/menu/ke$b;->h:I

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

.method public x(Landroidx/appcompat/view/menu/u6$i;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke$b;->g:Landroid/util/ArrayMap;

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

    check-cast v2, Landroidx/appcompat/view/menu/u6$j;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/u50;->m(Landroidx/appcompat/view/menu/u6$f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
