.class public Landroidx/appcompat/view/menu/l81$d$a;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l81$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/l81$b;

.field public b:Ljava/util/List;

.field public c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/l81$b;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l81$b;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->d:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/appcompat/view/menu/l81$d$a;->a:Landroidx/appcompat/view/menu/l81$b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowInsetsAnimation;)Landroidx/appcompat/view/menu/l81;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/l81;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/l81;->f(Landroid/view/WindowInsetsAnimation;)Landroidx/appcompat/view/menu/l81;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/l81$d$a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->a:Landroidx/appcompat/view/menu/l81$b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l81$d$a;->a(Landroid/view/WindowInsetsAnimation;)Landroidx/appcompat/view/menu/l81;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l81$b;->b(Landroidx/appcompat/view/menu/l81;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->a:Landroidx/appcompat/view/menu/l81$b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l81$d$a;->a(Landroid/view/WindowInsetsAnimation;)Landroidx/appcompat/view/menu/l81;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l81$b;->c(Landroidx/appcompat/view/menu/l81;)V

    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->b:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/w81;->a(Ljava/lang/Object;)Landroid/view/WindowInsetsAnimation;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/l81$d$a;->a(Landroid/view/WindowInsetsAnimation;)Landroidx/appcompat/view/menu/l81;

    move-result-object v2

    invoke-static {v1}, Landroidx/appcompat/view/menu/x81;->a(Landroid/view/WindowInsetsAnimation;)F

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/l81;->e(F)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/l81$d$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/l81$d$a;->a:Landroidx/appcompat/view/menu/l81$b;

    invoke-static {p1}, Landroidx/appcompat/view/menu/y81;->t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->b:Ljava/util/List;

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/l81$b;->d(Landroidx/appcompat/view/menu/y81;Ljava/util/List;)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81;->s()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$d$a;->a:Landroidx/appcompat/view/menu/l81$b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l81$d$a;->a(Landroid/view/WindowInsetsAnimation;)Landroidx/appcompat/view/menu/l81;

    move-result-object p1

    invoke-static {p2}, Landroidx/appcompat/view/menu/l81$a;->d(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/appcompat/view/menu/l81$a;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/l81$b;->e(Landroidx/appcompat/view/menu/l81;Landroidx/appcompat/view/menu/l81$a;)Landroidx/appcompat/view/menu/l81$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l81$a;->c()Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method
