.class public Landroidx/appcompat/view/menu/ei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/view/menu/ec;

.field public final c:Landroidx/appcompat/view/menu/ec;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/ec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ei;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ei;->b:Landroidx/appcompat/view/menu/ec;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ei;->c:Landroidx/appcompat/view/menu/ec;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/appcompat/view/menu/di;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ei;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ei;->b:Landroidx/appcompat/view/menu/ec;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ei;->c:Landroidx/appcompat/view/menu/ec;

    invoke-static {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/di;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/ec;Ljava/lang/String;)Landroidx/appcompat/view/menu/di;

    move-result-object p1

    return-object p1
.end method
