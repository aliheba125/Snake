.class public final Landroidx/appcompat/view/menu/p40$a;
.super Landroidx/appcompat/view/menu/n40$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/p40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/n40$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/p40;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/n40$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/n40$a;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/appcompat/view/menu/vg0;->a(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/vg0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/vg0;->d()Landroidx/appcompat/view/menu/vg0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/vg0;->b(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/n40$a;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/p40;->e(Ljava/util/Collection;Ljava/util/Comparator;)Landroidx/appcompat/view/menu/p40;

    move-result-object v0

    return-object v0
.end method
