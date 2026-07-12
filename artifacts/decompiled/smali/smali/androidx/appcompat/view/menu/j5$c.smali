.class public final Landroidx/appcompat/view/menu/j5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tf0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/j5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/j5$c;

.field public static final b:Landroidx/appcompat/view/menu/ir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/j5$c;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/j5$c;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/j5$c;->a:Landroidx/appcompat/view/menu/j5$c;

    const-string v0, "messagingClientEventExtension"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/j5$c;->b:Landroidx/appcompat/view/menu/ir;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    check-cast p2, Landroidx/appcompat/view/menu/uf0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/j5$c;->b(Landroidx/appcompat/view/menu/uk0;Landroidx/appcompat/view/menu/uf0;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/uk0;Landroidx/appcompat/view/menu/uf0;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
