.class public abstract Landroidx/appcompat/view/menu/vg0;
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

.method public static a(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/vg0;
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/vg0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/vg0;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/id;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/id;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static c()Landroidx/appcompat/view/menu/vg0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/pe0;->m:Landroidx/appcompat/view/menu/pe0;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/l40;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/l40;->z(Ljava/util/Comparator;Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/l40;

    move-result-object p1

    return-object p1
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public d()Landroidx/appcompat/view/menu/vg0;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/ya0;->b()Landroidx/appcompat/view/menu/pw;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/vg0;->e(Landroidx/appcompat/view/menu/pw;)Landroidx/appcompat/view/menu/vg0;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroidx/appcompat/view/menu/pw;)Landroidx/appcompat/view/menu/vg0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/f9;

    invoke-direct {v0, p1, p0}, Landroidx/appcompat/view/menu/f9;-><init>(Landroidx/appcompat/view/menu/pw;Landroidx/appcompat/view/menu/vg0;)V

    return-object v0
.end method
