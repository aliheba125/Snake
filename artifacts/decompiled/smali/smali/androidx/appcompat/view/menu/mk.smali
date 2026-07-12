.class public Landroidx/appcompat/view/menu/mk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/l41;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/appcompat/view/menu/nx;


# direct methods
.method public constructor <init>(Ljava/util/Set;Landroidx/appcompat/view/menu/nx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mk;->e(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/mk;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/mk;->b:Landroidx/appcompat/view/menu/nx;

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/l41;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/mk;->d(Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/l41;

    move-result-object p0

    return-object p0
.end method

.method public static c()Landroidx/appcompat/view/menu/ud;
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/l41;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ud;->e(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    const-class v1, Landroidx/appcompat/view/menu/t80;

    invoke-static {v1}, Landroidx/appcompat/view/menu/il;->l(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/lk;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/lk;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/l41;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/mk;

    const-class v1, Landroidx/appcompat/view/menu/t80;

    invoke-interface {p0, v1}, Landroidx/appcompat/view/menu/xd;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/nx;->a()Landroidx/appcompat/view/menu/nx;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/mk;-><init>(Ljava/util/Set;Landroidx/appcompat/view/menu/nx;)V

    return-object v0
.end method

.method public static e(Ljava/util/Set;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/t80;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/t80;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/t80;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mk;->b:Landroidx/appcompat/view/menu/nx;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nx;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/mk;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/mk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mk;->b:Landroidx/appcompat/view/menu/nx;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/nx;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/mk;->e(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
