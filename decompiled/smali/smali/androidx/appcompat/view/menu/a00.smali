.class public Landroidx/appcompat/view/menu/a00;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v1, "appwidget"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/j8;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/b00;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "appwidget"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "appwidget"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p3}, Landroidx/appcompat/view/menu/od0;->e([Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ob;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 5

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [I

    const-string v4, "startListening"

    invoke-direct {v0, v4, v3}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "stopListening"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "allocateAppWidgetId"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "deleteAppWidgetId"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "deleteHost"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "deleteAllHosts"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "getAppWidgetViews"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "getAppWidgetIdsForHost"

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "createAppWidgetConfigIntentSender"

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "updateAppWidgetIds"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "updateAppWidgetOptions"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "getAppWidgetOptions"

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "partiallyUpdateAppWidgetIds"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "updateAppWidgetProvider"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "notifyAppWidgetViewDataChanged"

    invoke-direct {v0, v3, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "getInstalledProvidersForProfile"

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v3, "getAppWidgetInfo"

    invoke-direct {v0, v3, v4}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "hasBindAppWidgetPermission"

    invoke-direct {v0, v4, v3}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v4, "setBindAppWidgetPermission"

    invoke-direct {v0, v4, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v4, "bindAppWidgetId"

    invoke-direct {v0, v4, v3}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v4, "bindRemoteViewsService"

    invoke-direct {v0, v4, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v4, "unbindRemoteViewsService"

    invoke-direct {v0, v4, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v2, "getAppWidgetIds"

    new-array v1, v1, [I

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v1, "isBoundWidgetPackage"

    invoke-direct {v0, v1, v3}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method
