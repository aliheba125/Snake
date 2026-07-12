.class public Landroidx/appcompat/view/menu/b1$c;
.super Landroidx/appcompat/view/menu/b10$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public n:Landroid/content/pm/ServiceInfo;

.field public o:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/b10$a;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/b1$c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/b1$c;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static bridge synthetic h(Landroidx/appcompat/view/menu/b1$c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/b1$c;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic j(Landroidx/appcompat/view/menu/b1$c;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/b1$c;->o:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic k(Landroidx/appcompat/view/menu/b1$c;)Landroid/content/pm/ServiceInfo;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/b1$c;->n:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public static bridge synthetic u2(Landroidx/appcompat/view/menu/b1$c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/b1$c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic v2(Landroidx/appcompat/view/menu/b1$c;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/b1$c;->o:Landroid/content/Intent;

    return-void
.end method

.method public static bridge synthetic w2(Landroidx/appcompat/view/menu/b1$c;Landroid/content/pm/ServiceInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/b1$c;->n:Landroid/content/pm/ServiceInfo;

    return-void
.end method


# virtual methods
.method public x2()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/b1$c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void
.end method

.method public y2()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/b1$c;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
