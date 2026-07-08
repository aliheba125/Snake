.class public abstract Landroidx/lifecycle/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/j$b;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroidx/appcompat/view/menu/gr0;

.field public c:I

.field public volatile d:Ljava/lang/Object;

.field public volatile e:Ljava/lang/Object;

.field public f:I

.field public g:Z

.field public h:Z

.field public final i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/j;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j;->a:Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/gr0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/gr0;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j;->b:Landroidx/appcompat/view/menu/gr0;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/j;->c:I

    sget-object v0, Landroidx/lifecycle/j;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/j;->e:Ljava/lang/Object;

    new-instance v1, Landroidx/lifecycle/j$a;

    invoke-direct {v1, p0}, Landroidx/lifecycle/j$a;-><init>(Landroidx/lifecycle/j;)V

    iput-object v1, p0, Landroidx/lifecycle/j;->i:Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/lifecycle/j;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/j;->f:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/h4;->f()Landroidx/appcompat/view/menu/h4;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/j$b;)V
    .locals 2

    iget-boolean v0, p1, Landroidx/lifecycle/j$b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/j$b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j$b;->a(Z)V

    return-void

    :cond_1
    iget v0, p1, Landroidx/lifecycle/j$b;->c:I

    iget v1, p0, Landroidx/lifecycle/j;->f:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p1, Landroidx/lifecycle/j$b;->c:I

    iget-object p1, p1, Landroidx/lifecycle/j$b;->a:Landroidx/appcompat/view/menu/zf0;

    iget-object v0, p0, Landroidx/lifecycle/j;->d:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/zf0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroidx/lifecycle/j$b;)V
    .locals 2

    iget-boolean p1, p0, Landroidx/lifecycle/j;->g:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroidx/lifecycle/j;->h:Z

    return-void

    :cond_0
    iput-boolean v0, p0, Landroidx/lifecycle/j;->g:Z

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/j;->h:Z

    iget-object v0, p0, Landroidx/lifecycle/j;->b:Landroidx/appcompat/view/menu/gr0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gr0;->g()Landroidx/appcompat/view/menu/gr0$d;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j$b;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/j;->b(Landroidx/lifecycle/j$b;)V

    iget-boolean v1, p0, Landroidx/lifecycle/j;->h:Z

    if-eqz v1, :cond_2

    :cond_3
    iget-boolean v0, p0, Landroidx/lifecycle/j;->h:Z

    if-nez v0, :cond_1

    iput-boolean p1, p0, Landroidx/lifecycle/j;->g:Z

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/zf0;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/j;->b:Landroidx/appcompat/view/menu/gr0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/gr0;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/j$b;

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/j;->a(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/j;->f:I

    iput-object p1, p0, Landroidx/lifecycle/j;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j;->c(Landroidx/lifecycle/j$b;)V

    return-void
.end method
