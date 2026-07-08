.class public abstract Landroidx/appcompat/view/menu/m40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/m40$a;
    }
.end annotation


# static fields
.field public static final p:[Ljava/util/Map$Entry;


# instance fields
.field public transient m:Landroidx/appcompat/view/menu/o40;

.field public transient n:Landroidx/appcompat/view/menu/o40;

.field public transient o:Landroidx/appcompat/view/menu/k40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Landroidx/appcompat/view/menu/m40;->p:[Ljava/util/Map$Entry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f()Landroidx/appcompat/view/menu/m40;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/jo0;->t:Landroidx/appcompat/view/menu/m40;

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroidx/appcompat/view/menu/o40;
.end method

.method public abstract b()Landroidx/appcompat/view/menu/o40;
.end method

.method public abstract c()Landroidx/appcompat/view/menu/k40;
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/m40;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m40;->g()Landroidx/appcompat/view/menu/k40;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k40;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d()Landroidx/appcompat/view/menu/o40;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/m40;->m:Landroidx/appcompat/view/menu/o40;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m40;->a()Landroidx/appcompat/view/menu/o40;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/m40;->m:Landroidx/appcompat/view/menu/o40;

    :cond_0
    return-object v0
.end method

.method public e()Landroidx/appcompat/view/menu/o40;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/m40;->n:Landroidx/appcompat/view/menu/o40;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m40;->b()Landroidx/appcompat/view/menu/o40;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/m40;->n:Landroidx/appcompat/view/menu/o40;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m40;->d()Landroidx/appcompat/view/menu/o40;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ya0;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Landroidx/appcompat/view/menu/k40;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/m40;->o:Landroidx/appcompat/view/menu/k40;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m40;->c()Landroidx/appcompat/view/menu/k40;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/m40;->o:Landroidx/appcompat/view/menu/k40;

    :cond_0
    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/m40;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m40;->d()Landroidx/appcompat/view/menu/o40;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/et0;->b(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m40;->e()Landroidx/appcompat/view/menu/o40;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/ya0;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m40;->g()Landroidx/appcompat/view/menu/k40;

    move-result-object v0

    return-object v0
.end method
