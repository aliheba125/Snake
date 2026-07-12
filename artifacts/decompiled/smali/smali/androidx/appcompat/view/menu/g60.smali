.class public final Landroidx/appcompat/view/menu/g60;
.super Landroidx/appcompat/view/menu/s60;
.source "SourceFile"


# static fields
.field public static final r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _invoked:I

.field public final q:Landroidx/appcompat/view/menu/fw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/g60;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/g60;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/fw;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/s60;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/g60;->q:Landroidx/appcompat/view/menu/fw;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g60;->w(Ljava/lang/Throwable;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/g60;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/g60;->q:Landroidx/appcompat/view/menu/fw;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
