.class public Landroidx/appcompat/view/menu/a80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/editing/a$a;
.implements Landroidx/appcompat/view/menu/z70$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/a80$e;,
        Landroidx/appcompat/view/menu/a80$d;,
        Landroidx/appcompat/view/menu/a80$c;,
        Landroidx/appcompat/view/menu/a80$b;
    }
.end annotation


# instance fields
.field public final a:[Landroidx/appcompat/view/menu/a80$d;

.field public final b:Ljava/util/HashSet;

.field public final c:Landroidx/appcompat/view/menu/a80$e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/a80$e;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/a80;->b:Ljava/util/HashSet;

    iput-object p1, p0, Landroidx/appcompat/view/menu/a80;->c:Landroidx/appcompat/view/menu/a80$e;

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/appcompat/view/menu/a80$d;

    new-instance v1, Landroidx/appcompat/view/menu/w70;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/a80$e;->getBinaryMessenger()Landroidx/appcompat/view/menu/i8;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/w70;-><init>(Landroidx/appcompat/view/menu/i8;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroidx/appcompat/view/menu/r70;

    new-instance v2, Landroidx/appcompat/view/menu/y70;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/a80$e;->getBinaryMessenger()Landroidx/appcompat/view/menu/i8;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/y70;-><init>(Landroidx/appcompat/view/menu/i8;)V

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/r70;-><init>(Landroidx/appcompat/view/menu/y70;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Landroidx/appcompat/view/menu/a80;->a:[Landroidx/appcompat/view/menu/a80$d;

    new-instance v0, Landroidx/appcompat/view/menu/z70;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/a80$e;->getBinaryMessenger()Landroidx/appcompat/view/menu/i8;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/z70;-><init>(Landroidx/appcompat/view/menu/i8;)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/z70;->b(Landroidx/appcompat/view/menu/z70$b;)V

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/a80;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a80;->e(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/a80;->a:[Landroidx/appcompat/view/menu/a80$d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroidx/appcompat/view/menu/w70;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/w70;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/a80;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/a80;->a:[Landroidx/appcompat/view/menu/a80$d;

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/a80$c;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/a80$c;-><init>(Landroidx/appcompat/view/menu/a80;Landroid/view/KeyEvent;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/a80;->a:[Landroidx/appcompat/view/menu/a80$d;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a80$c;->a()Landroidx/appcompat/view/menu/a80$d$a;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Landroidx/appcompat/view/menu/a80$d;->a(Landroid/view/KeyEvent;Landroidx/appcompat/view/menu/a80$d$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a80;->e(Landroid/view/KeyEvent;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/a80;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A KeyboardManager was destroyed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unhandled redispatch event(s)."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardManager"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/a80;->c:Landroidx/appcompat/view/menu/a80$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/a80$e;->c(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/a80;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/a80;->c:Landroidx/appcompat/view/menu/a80$e;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/a80$e;->a(Landroid/view/KeyEvent;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/a80;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "KeyboardManager"

    const-string v0, "A redispatched key event was consumed before reaching KeyboardManager"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
