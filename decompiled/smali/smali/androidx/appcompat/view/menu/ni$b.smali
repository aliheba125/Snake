.class public Landroidx/appcompat/view/menu/ni$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ud;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ud;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->c:Ljava/util/Set;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ni$b;->a:Landroidx/appcompat/view/menu/ud;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/ni$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/ni$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Landroidx/appcompat/view/menu/ud;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->a:Landroidx/appcompat/view/menu/ud;

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->b:Ljava/util/Set;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public g(Landroidx/appcompat/view/menu/ni$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ni$b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
