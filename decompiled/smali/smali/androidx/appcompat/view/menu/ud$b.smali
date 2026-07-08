.class public Landroidx/appcompat/view/menu/ud$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public d:I

.field public e:I

.field public f:Landroidx/appcompat/view/menu/de;

.field public final g:Ljava/util/Set;


# direct methods
.method public varargs constructor <init>(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ud$b;->a:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ud$b;->b:Ljava/util/Set;

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ud$b;->c:Ljava/util/Set;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/ud$b;->d:I

    iput v1, p0, Landroidx/appcompat/view/menu/ud$b;->e:I

    .line 15
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/view/menu/ud$b;->g:Ljava/util/Set;

    const-string v2, "Null interface"

    .line 16
    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/oj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    .line 19
    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/oj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ud$b;->b:Ljava/util/Set;

    .line 20
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;Landroidx/appcompat/view/menu/ud$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/ud$b;-><init>(Landroidx/appcompat/view/menu/ul0;[Landroidx/appcompat/view/menu/ul0;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ud$b;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ud$b;->b:Ljava/util/Set;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ud$b;->c:Ljava/util/Set;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/ud$b;->d:I

    iput v1, p0, Landroidx/appcompat/view/menu/ud$b;->e:I

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/view/menu/ud$b;->g:Ljava/util/Set;

    const-string v2, "Null interface"

    .line 7
    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/oj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Landroidx/appcompat/view/menu/ul0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    .line 10
    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/oj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ud$b;->b:Ljava/util/Set;

    .line 11
    invoke-static {v0}, Landroidx/appcompat/view/menu/ul0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Landroidx/appcompat/view/menu/ud$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/ud$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/ud$b;)Landroidx/appcompat/view/menu/ud$b;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ud$b;->g()Landroidx/appcompat/view/menu/ud$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;
    .locals 1

    const-string v0, "Null dependency"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/oj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/il;->b()Landroidx/appcompat/view/menu/ul0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ud$b;->j(Landroidx/appcompat/view/menu/ul0;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ud$b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Landroidx/appcompat/view/menu/ud$b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ud$b;->i(I)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroidx/appcompat/view/menu/ud;
    .locals 11

    iget-object v0, p0, Landroidx/appcompat/view/menu/ud$b;->f:Landroidx/appcompat/view/menu/de;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Missing required property: factory."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/oj0;->d(ZLjava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/ud;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ud$b;->a:Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ud$b;->b:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ud$b;->c:Ljava/util/Set;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v6, p0, Landroidx/appcompat/view/menu/ud$b;->d:I

    iget v7, p0, Landroidx/appcompat/view/menu/ud$b;->e:I

    iget-object v8, p0, Landroidx/appcompat/view/menu/ud$b;->f:Landroidx/appcompat/view/menu/de;

    iget-object v9, p0, Landroidx/appcompat/view/menu/ud$b;->g:Ljava/util/Set;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroidx/appcompat/view/menu/ud;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILandroidx/appcompat/view/menu/de;Ljava/util/Set;Landroidx/appcompat/view/menu/ud$a;)V

    return-object v0
.end method

.method public e()Landroidx/appcompat/view/menu/ud$b;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ud$b;->i(I)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;
    .locals 1

    const-string v0, "Null factory"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/oj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/de;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ud$b;->f:Landroidx/appcompat/view/menu/de;

    return-object p0
.end method

.method public final g()Landroidx/appcompat/view/menu/ud$b;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/ud$b;->e:I

    return-object p0
.end method

.method public h(Ljava/lang/String;)Landroidx/appcompat/view/menu/ud$b;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ud$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final i(I)Landroidx/appcompat/view/menu/ud$b;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/ud$b;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Instantiation type has already been set."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/oj0;->d(ZLjava/lang/String;)V

    iput p1, p0, Landroidx/appcompat/view/menu/ud$b;->d:I

    return-object p0
.end method

.method public final j(Landroidx/appcompat/view/menu/ul0;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ud$b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/oj0;->a(ZLjava/lang/String;)V

    return-void
.end method
