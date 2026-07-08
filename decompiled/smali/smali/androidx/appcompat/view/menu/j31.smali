.class public final Landroidx/appcompat/view/menu/j31;
.super Landroidx/appcompat/view/menu/nh;
.source "SourceFile"


# static fields
.field public static final o:Landroidx/appcompat/view/menu/j31;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/j31;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/j31;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/j31;->o:Landroidx/appcompat/view/menu/j31;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/nh;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p2, Landroidx/appcompat/view/menu/xa1;->n:Landroidx/appcompat/view/menu/xa1$a;

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(Landroidx/appcompat/view/menu/kh;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
