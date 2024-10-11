
resource "azurerm_linux_virtual_machine" "my_linux_vm3" {
  location = "eastus"
  name = "test3"
  resource_group_name = "test3"
  admin_username = "testuser3"
  admin_password = "Testpa5s3"

  size = "Standard_F16s"

  tags = {
    Environment = "production"
    Service = "web-app"
  }

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  network_interface_ids = [
    "/subscriptions/123/resourceGroups/testrg/providers/Microsoft.Network/networkInterfaces/testnic",
  ]

  source_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "16.04-LTS"
    version = "latest"
  }
}


